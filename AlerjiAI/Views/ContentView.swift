//
//  ContentView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 4.05.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        if viewModel.isLoggedIn {
            HomeView()
        } else {
            LoginRegisterView(viewModel: viewModel)
        }
        
    }
}

#Preview {
    ContentView()
}
