//
//  DatabaseManager.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//

import Foundation
import Firebase

protocol DatabaseServiceProtocol {
    func saveUser(_ user: User, completion: @escaping (Error?) -> Void)
    func deleteUser(withID id: String, completion: @escaping (Error?) -> Void)
    func getUser(withID id: String, completion: @escaping (User?, Error?) -> Void)
    func updateUser(_ user: User, completion: @escaping (Error?) -> Void)
    func getProduct(withName name: String, completion: @escaping ([String: Any]?, Error?) -> Void)
}

class FirestoreDatabaseService: DatabaseServiceProtocol {
    private let db = Firestore.firestore()
    
    func saveUser(_ user: User, completion: @escaping (Error?) -> Void) {
        let users = db.collection("Users")
        users.document(user.id).setData(user.dictionary()) { error in
            completion(error)
        }
    }
    
    func deleteUser(withID id: String, completion: @escaping (Error?) -> Void) {
        let users = db.collection("Users")
        users.document(id).delete { error in
            completion(error)
        }
    }
    
    func getUser(withID id: String, completion: @escaping (User?, Error?) -> Void) {
        let users = db.collection("Users")
        users.document(id).getDocument { document, error in
            if let error = error {
                completion(nil, error)
                return
            }
            if let document = document, document.exists {
                do {
                    let data = document.data()
                    let json = try JSONSerialization.data(withJSONObject: data ?? [:])
                    let decoder = JSONDecoder()
                    let user = try decoder.decode(User.self, from: json)
                    completion(user, nil)
                } catch {
                    completion(nil, error)
                }
            } else {
                completion(nil, error)
            }
        }
    }
    
    func updateUser(_ user: User, completion: @escaping (Error?) -> Void) {
        let users = db.collection("Users")
        users.document(user.id).updateData(user.dictionary()) { error in
            completion(error)
        }
    }
    
    func getProduct(withName name: String, completion: @escaping ([String: Any]?, Error?) -> Void) {
        let products = db.collection("Products")
        products.whereField("name", isEqualTo: name).getDocuments { snapshot, error in
            if let error = error {
                completion(nil, error)
                return
            }
            if let documents = snapshot?.documents, let document = documents.first {
                completion(document.data(), nil)
            } else {
                completion(nil, nil)
            }
        }
    }
}
