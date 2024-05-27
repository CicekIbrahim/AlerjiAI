//
//  HomeVİew.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 26.05.2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        TabView {
            ScanView()
                .tabItem {
                    Label("", systemImage: "viewfinder")
                        
                }
                
            
            ProfileView()
                .environmentObject(viewModel)
                .tabItem {
                    Label("", systemImage: "person.fill")
                        
                }
                
        }
        .accentColor(.white)
        .onAppear() {
              UITabBar.appearance().backgroundColor = .apple
          }
    }
}

#Preview {
    HomeView()
}
