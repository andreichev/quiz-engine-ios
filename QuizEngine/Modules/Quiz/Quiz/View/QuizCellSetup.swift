//
//  QuizCellSetup.swift
//  QuizEngine
//
//  Created by Admin on 07.06.2021.
//

import UIKit

protocol QuizCellSetupDelegate: AnyObject {
    func editQuiz()
    func showAllAttemptsOf(user: Profile)
    func reloadAction()
}

final class QuizCellSetup {
    private var entity: Quiz?
    var participants: [QuizParticipantViewModel] = []
    var messageAboutError: String = .empty
    weak var delegate: QuizCellSetupDelegate?

    private var tableView: UITableView
    private let editButtonIndex: Int = 1

    var firstParticipantIndex: Int = 0

    // MARK: - Init

    init(entity: Quiz?, tableView: UITableView) {
        self.entity = entity
        self.tableView = tableView
    }

    // MARK: - Internal methods

    func updateQuiz(_ entity: Quiz) {
        self.entity = entity
        participants = QuizParticipantViewModel.getParticipants(from: entity.results)
    }

    // MARK: - Cells setup

    func quizHeaderCell(_ cell: QuizHeaderCell, for indexPath: IndexPath) {
        guard let quiz = entity else { return }
        cell.configure(quiz: quiz, delegate: self)
    }

    func editingNotAvaliableCell(_ cell: SimpleTextCell, for indexPath: IndexPath) {
        cell.configure(text: Text.Quiz.editingNotAvaliable, topAndBottomInsets: 8)
    }

    func editCell(_ cell: ButtonCell, for indexPath: IndexPath) {
        cell.configure(text: Text.Quiz.edit, index: editButtonIndex, isEnabled: true, delegate: self)
    }

    func participantsHeaderCell(_ cell: HeaderCell, for indexPath: IndexPath) {
        cell.configure(title: Text.Quiz.participants)
    }

    func participantCell(_ cell: ParticipantCell, for indexPath: IndexPath) {
        let participant = participants[indexPath.row - firstParticipantIndex]
        cell.configure(delegate: self, participant: participant)
    }

    func noParticipantsCell(_ cell: SimpleTextCell, for indexPath: IndexPath) {
        cell.configure(text: Text.Quiz.noParticipants, topAndBottomInsets: 8)
    }

    func errorCell(_ cell: ErrorCell, for indexPath: IndexPath) {
        cell.configure(with: messageAboutError)
        cell.delegate = self
    }
}

// MARK: - Action handlers

extension QuizCellSetup: ErrorCellDelegate, QuizHeaderCellDelegate, ButtonCellDelegate,
    ParticipantCellDelegate
{
    func didSelectParticipant(user: Profile) {
        delegate?.showAllAttemptsOf(user: user)
    }

    func buttonClicked(index: Int) {
        if index == editButtonIndex {
            delegate?.editQuiz()
        }
    }

    func reloadData() {
        delegate?.reloadAction()
    }
}
