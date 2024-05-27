//
//  AuthViewModel.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//

import Foundation
import Firebase

class AuthViewModel : BaseViewModel {
    
    private let authService: AuthServiceProtocol
    private let databaseService: DatabaseServiceProtocol
    
    @Published var email = ""
    @Published var password = ""
    @Published var passwordAgain = ""
    @Published var name = ""
    @Published var surname = ""
    
    @Published var isRegister = false
    @Published var isRegisterValid = true
    @Published var isLoginValid = true
    @Published var user = User(id: "")
    @Published var isLoggedIn = LocalStorage.shared.isLoggedIn {
        didSet {
            LocalStorage.shared.isLoggedIn = isLoggedIn
        }
    }

    
    init(authService: AuthServiceProtocol = FirebaseAuthService(), databaseService: DatabaseServiceProtocol = FirestoreDatabaseService()) {
        self.authService = authService
        self.databaseService = databaseService
    }
    
    func login() {
        authService.login(email: email, password: password) { result, error in
            if let error = error {
                self.showError(error)
                return
            }
            if let userId = result?.user.uid {
                self.databaseService.getUser(withID: userId) { user, error in
                    if let error {
                        self.showError(error)
                        return
                    }
                    if let user {
                        LocalStorage.shared.setUser(user: user)
                        self.isLoggedIn = true
                    }
                }
            }
            
            
        }
    }
    
    func logout() {
        isLoggedIn = false
        LocalStorage.shared.logout()
    }
    
    func register() -> Void {
        authService.register(email: email, password: password) { result, error in
            if let error = error {
                self.showError(error)
                return
            }
            if let result = result {
                self.user.email = result.user.email
                self.user.id = result.user.uid
                self.user.name = self.name
                self.user.surname = self.surname
                self.user.allergies = []
                self.user.profileImage = ""
                self.completeRegistration()
            }
        }
    }
    
    private func completeRegistration() {
        databaseService.saveUser(user) { error in
            if let error = error {
                self.showError(error)
                return
            }
            LocalStorage.shared.setUser(user: self.user)
            self.isLoggedIn = true
        }
    }
    

}
