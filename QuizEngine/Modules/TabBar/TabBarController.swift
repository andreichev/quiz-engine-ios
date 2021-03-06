//
//  TabBarController.swift
//  QuizEngine
//
//  Created by Admin on 28.05.2021.
//

import UIKit

class TabBarController: UITabBarController {
    // MARK: - Tab indices

    static let homeTabIndex: Int = 0
    static let historyTabIndex: Int = 1
    static let createTabIndex: Int = 2
    static let quizListTabIndex: Int = 3
    static let profileTabIndex: Int = 4

    // MARK: - Init

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    init() {
        super.init(nibName: nil, bundle: nil)
        setupViewControllers()
        addActionHandlers()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViewControllers() {
        let home = UINavigationController(rootViewController: MainController())
        home.tabBarItem.image = Assets.tabBarIconHome.image
        home.tabBarItem.title = Text.Main.title
        let history = UINavigationController(rootViewController: HistoryController())
        history.tabBarItem.image = Assets.tabBarIconHistory.image
        history.tabBarItem.title = Text.History.title
        let create = UINavigationController(rootViewController: EditQuizController(quiz: Quiz()))
        create.tabBarItem.image = Assets.tabBarIconAdd.image
        create.tabBarItem.title = Text.EditQuiz.tabBarTitle
        let quizList = UINavigationController(rootViewController: QuizListController())
        quizList.tabBarItem.image = Assets.tabBarIconQuizList.image
        quizList.tabBarItem.title = Text.QuizList.title
        let profile = UINavigationController(rootViewController: ProfileController())
        profile.tabBarItem.image = Assets.tabBarIconProfile.image
        profile.tabBarItem.title = Text.Profile.title
        viewControllers = [home, history, create, quizList, profile]
    }

    // MARK: - Action handlers

    private func addActionHandlers() {
        NotificationCenter.default.addObserver(
            self, selector: #selector(userPassedQuiz(notification:)),
            name: .userFinishedQuiz, object: nil
        )
    }

    @objc
    private func userPassedQuiz(notification: NSNotification) {
        selectedIndex = TabBarController.historyTabIndex
        guard
            let navigationController = selectedViewController as? UINavigationController,
            let quizPassing = notification.object as? QuizPassing,
            let quizId = quizPassing.quiz?.id
        else { return }
        navigationController.pushViewController(QuizResultController(quizId: quizId, passingId: quizPassing.id))
    }
}
