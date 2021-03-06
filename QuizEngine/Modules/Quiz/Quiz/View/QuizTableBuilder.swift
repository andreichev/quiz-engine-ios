//
//  QuizTableBuilder.swift
//  QuizEngine
//
//  Created by Admin on 07.06.2021.
//

import UIKit

final class QuizTableBuilder {
    typealias Row = GenericTableViewRowModel

    // MARK: - Properties

    private var genericDataSource: GenericTableViewDataSource
    // swiftlint:disable weak_delegate
    private var genericTableViewDelegate: GenericTableViewDelegate?
    private var dataStorage: GenericTableViewDataStorage = GenericTableViewDataStorage()
    private var tableView: UITableView
    private var cellsSetup: QuizCellSetup
    private var entity: Quiz?

    // MARK: - Init

    init(tableView: UITableView, entity: Quiz?) {
        self.entity = entity
        self.tableView = tableView
        self.genericDataSource = GenericTableViewDataSource(with: dataStorage)
        self.genericTableViewDelegate = GenericTableViewDelegate(with: dataStorage)
        tableView.dataSource = genericDataSource
        tableView.delegate = genericTableViewDelegate
        self.cellsSetup = QuizCellSetup(entity: entity, tableView: tableView)
    }

    // MARK: - Internal methods

    func setDelegate(_ delegate: QuizCellSetupDelegate) {
        cellsSetup.delegate = delegate
    }

    func showLoading() {
        buildLoadingTableStructure()
        reloadData(animated: true)
    }

    func showError(message: String) {
        cellsSetup.messageAboutError = message
        buildErrorCellTableStructure()
        reloadData(animated: false)
    }

    func updateQuiz(_ entity: Quiz, animated: Bool) {
        self.entity = entity
        cellsSetup.updateQuiz(entity)
        buildFullTableStructure()
        reloadData(animated: animated)
    }

    // MARK: - Private methods

    private func reloadData(animated: Bool) {
        if animated == false { tableView.reloadData(); return }
        if genericDataSource.numberOfSections(in: tableView) == tableView.numberOfSections {
            let range = NSRange(location: 0, length: tableView.numberOfSections)
            let sections = NSIndexSet(indexesIn: range)
            tableView.reloadSections(sections as IndexSet, with: .fade)
        } else {
            UIView.transition(
                with: tableView,
                duration: 0.3,
                options: .transitionCrossDissolve,
                animations: { [weak self] in
                    self?.tableView.reloadData()
                },
                completion: nil
            )
        }
    }

    private func buildErrorCellTableStructure() {
        let rowsSequence: [Row] = [
            Row(cellsSetup.errorCell(_:for:), fromNib: true),
        ]
        setRowsSequenceToDataStorage(rowsSequence: rowsSequence)
    }

    private func buildLoadingTableStructure() {
        let rowsSequence: [Row] = [
            Row(LoadingCell.loadingCell(_:for:)),
        ]
        setRowsSequenceToDataStorage(rowsSequence: rowsSequence)
    }

    private func buildFullTableStructure() {
        let participants: [QuizParticipantViewModel] = cellsSetup.participants
        var rowsSequence: [Row] = [
            Row(cellsSetup.quizHeaderCell(_:for:), fromNib: true, bundle: resourcesBundle),
        ]
        if participants.isEmpty {
            rowsSequence.append(
                Row(cellsSetup.editCell(_:for:), fromNib: true, bundle: resourcesBundle)
            )
        } else {
            rowsSequence.append(
                Row(cellsSetup.editingNotAvaliableCell(_:for:))
            )
        }
        rowsSequence.append(
            Row(cellsSetup.participantsHeaderCell(_:for:), fromNib: true, bundle: resourcesBundle)
        )

        cellsSetup.firstParticipantIndex = rowsSequence.count
        if participants.isEmpty {
            rowsSequence.append(
                Row(cellsSetup.noParticipantsCell(_:for:))
            )
        } else {
            for _ in participants {
                rowsSequence.append(
                    Row(cellsSetup.participantCell(_:for:), fromNib: true, bundle: resourcesBundle)
                )
            }
        }
        setRowsSequenceToDataStorage(rowsSequence: rowsSequence)
    }

    private func setRowsSequenceToDataStorage(rowsSequence: [GenericTableViewRowModel]) {
        let section = GenericTableViewSectionModel(with: rowsSequence)
        dataStorage.update(withOneSection: section)
        dataStorage.registerFor(tableView)
    }
}
