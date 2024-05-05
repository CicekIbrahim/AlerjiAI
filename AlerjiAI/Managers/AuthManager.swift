//
//  AuthManager.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//

import Foundation
import FirebaseAuth

protocol AuthServiceProtocol {
    typealias AuthResult = (AuthDataResult?, Error?) -> Void
    
    func login(email: String, password: String, completion: @escaping AuthResult)
    func register(email: String, password: String, completion: @escaping AuthResult)
}


class FirebaseAuthService: AuthServiceProtocol {
    func login(email: String, password: String, completion: @escaping AuthResult) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(nil, error)
            } else if let user = result?.user {
                completion(result, nil)
            } else {
                completion(nil, AuthError.unknownError)
            }
        }
    }
    
    func register(email: String, password: String, completion: @escaping AuthResult) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(nil, error)
            } else if let user = result?.user {
                completion(result, nil)
            } else {
                completion(nil, AuthError.unknownError)
            }
        }
    }
}

enum AuthError: Error {
    case unknownError
}
