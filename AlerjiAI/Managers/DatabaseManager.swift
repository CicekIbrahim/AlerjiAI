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
    func getProduct(withName name: String, completion: @escaping (Product?, Error?) -> Void)
    func saveScan(_ scan: Scan, completion: @escaping (Error?) -> Void)
    func getAllScans(for userId: String, completion: @escaping ([Scan]?, Error?) -> Void)
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
    
    func getProduct(withName name: String, completion: @escaping (Product?, Error?) -> Void) {
        let products = db.collection("Products")
        products.whereField("name", isEqualTo: name).getDocuments { snapshot, error in
            if let error = error {
                completion(nil, error)
                return
            }
            if let documents = snapshot?.documents, let document = documents.first {
                do {
                    let data = document.data()
                    let json = try JSONSerialization.data(withJSONObject: data)
                    let product = try JSONDecoder().decode(Product.self, from: json)
                    completion(product, nil)
                } catch {
                    completion(nil, error)
                }
            } else {
                completion(nil, nil)
            }
        }
    }
    
    func saveScan(_ scan: Scan, completion: @escaping (Error?) -> Void) {
        let scans = db.collection("Scans")
        scans.document(scan.id).setData(scan.dictionary()) { error in
            completion(error)
        }
    }
    
    func getAllScans(for userId: String, completion: @escaping ([Scan]?, Error?) -> Void) {
        let scans = db.collection("Scans").whereField("userId", isEqualTo: userId)
        scans.getDocuments { snapshot, error in
            if let error = error {
                completion(nil, error)
                return
            }
            var scanArray: [Scan] = []
            if let documents = snapshot?.documents {
                for document in documents {
                    do {
                        let data = document.data()
                        let json = try JSONSerialization.data(withJSONObject: data)
                        let scan = try JSONDecoder().decode(Scan.self, from: json)
                        scanArray.append(scan)
                    } catch {
                        completion(nil, error)
                        return
                    }
                }
            }
            completion(scanArray, nil)
        }
    }
}

