//
//  SelectEntityController.swift
//  QuizEngine
//
//  Created by Admin on 09.06.2021.
//

import MDFoundation

protocol SelectEntityControllerLogic: AnyObject {
    func didFinishSearching(result: [Entity])
    func presentError(message: String)
}

class SelectEntityController: UIViewController, SelectEntityControllerLogic {
    // MARK: - Properties

    var interactor: SelectEntityInteractor?

    lazy var customView = SelectEntityView()
    lazy var notificationFeedbackGenerator = UINotificationFeedbackGenerator()

    let method: SelectEntityMethod
    let quizId: String?
    let editQuizController: EditQuestionControllerDelegate
    let graphType: GraphType

    // MARK: - Init

    init(
        method: SelectEntityMethod,
        quizId: String?,
        editQuizController: EditQuestionControllerDelegate,
        graphType: GraphType
    ) {
        self.method = method
        self.quizId = quizId
        self.editQuizController = editQuizController
        self.graphType = graphType
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Life cycle

    override func loadView() {
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupAppearance()
        addActionHandlers()
        customView.showLoading()
        makeSearchRequest()
    }

    private func setup() {
        interactor = SelectEntityInteractor()
        interactor?.controller = self
    }

    private func setupAppearance() {
        title = Text.SelectEntity.title
        extendedLayoutIncludesOpaqueBars = true
    }

    // MARK: - Network requests

    @objc
    private func makeSearchRequest() {
        switch method {
        case let .map(region):
            interactor?.search(region: region)
        case let .query(text):
            interactor?.search(query: text)
        }
    }

    // MARK: - Action handlers

    private func addActionHandlers() {
        customView.setDelegate(self)
    }

    // MARK: - SelectEntityControllerLogic

    func didFinishSearching(result: [Entity]) {
        customView.updateEntitys(result)
    }

    func presentError(message: String) {
        notificationFeedbackGenerator.notificationOccurred(.error)
        customView.showError(message: message)
    }
}

// MARK: - EntitysDataSourceDelegate

extension SelectEntityController: EntitiesDataSourceDelegate {
    func didSelectEntity(_ item: Entity) {
        navigationController?.pushViewController(
            SelectQuestionController(entity: item, quizId: quizId, editQuizController: editQuizController, graphType: graphType)
        )
    }

    func actionButtonTapped() {
        customView.showLoading()
        makeSearchRequest()
    }
}
