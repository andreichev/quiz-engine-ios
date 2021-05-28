//
//  QuizService.swift
//  QuizEngine
//
//  Created by Admin on 28.05.2021.
//

import Moya

class QuizService: QuizServiceProtocol {
    let dataProvider = MoyaProvider<QuizApi>()

    func get(id: String, completion: @escaping (Quiz?, Error?) -> Void) {
        dataProvider.request(.get(id: id)) { result in
            switch result {
            case let .success(moyaResponse):
                if (500 ... 599).contains(moyaResponse.statusCode) {
                    completion(nil, GeneralError.remoteError)
                    return
                }
                guard (200 ... 299).contains(moyaResponse.statusCode) else {
                    if let message = try? moyaResponse.map(String.self, atKeyPath: "message") {
                        completion(nil, CustomError(errorDescription: message))
                    } else {
                        completion(nil, GeneralError.requestError)
                    }
                    return
                }
                do {
                    let response = try moyaResponse.map(Quiz.self)
                    completion(response, nil)
                } catch {
                    completion(nil, error)
                }
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    func getOwnList(completion: @escaping ([Quiz]?, Error?) -> Void) {
        dataProvider.request(.ownList) { result in
            switch result {
            case let .success(moyaResponse):
                if (500 ... 599).contains(moyaResponse.statusCode) {
                    completion(nil, GeneralError.remoteError)
                    return
                }
                guard (200 ... 299).contains(moyaResponse.statusCode) else {
                    if let message = try? moyaResponse.map(String.self, atKeyPath: "message") {
                        completion(nil, CustomError(errorDescription: message))
                    } else {
                        completion(nil, GeneralError.requestError)
                    }
                    return
                }
                do {
                    let response = try moyaResponse.map([Quiz].self)
                    completion(response, nil)
                } catch {
                    completion(nil, error)
                }
            case let .failure(error):
                completion(nil, error)
            }
        }
    }
}
