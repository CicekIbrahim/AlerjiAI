//
//  LocaleStorage.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 26.05.2024.
//

import Foundation

class LocalStorage {
    static let shared = LocalStorage()
    private init() { }
    let defaults = KeychainWrapper.standard
    let userDefaults = UserDefaults.standard
    
    func logout() {
        defaults.removeObject(forKey: "user")
        defaults.removeObject(forKey: "isLoggedIn")
       
    }
    
    var user: Data? {
        get {
            return defaults.data(forKey: "user")
        }
        set {
            guard let newValue = newValue else {return}
            defaults.set(newValue, forKey: "user")
        }
    }
    
    var isLoggedIn: Bool {
        get {
            return defaults.bool(forKey: "isLoggedIn") ?? false
        }
        set {
            defaults.set(newValue, forKey: "isLoggedIn")
        }
    }


    
    func getUser() -> User? {
        guard let data = self.user else {return nil}
        let decoder = JSONDecoder()
        if let loadedUser = try? decoder.decode(User.self, from: data) {
            return loadedUser
        } else {
            return nil
        }
    }
    
    func setUser(user: User) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(user) {
            self.user = encoded
        }
    }



}

