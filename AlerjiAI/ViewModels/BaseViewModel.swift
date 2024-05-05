//
//  BaseViewModel.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//

import Foundation

class BaseViewModel: ObservableObject {
    @Published var showError = false
    @Published var errorMessage = ""
    
    
    func showError(_ error: Error) {
        showError = true
        errorMessage = error.localizedDescription
    }
}
