//
//  ContentView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 4.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScanView()
                .tabItem {
                    Label("", systemImage: "viewfinder")
                        
                }
                
            
            ProfileView()
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
    ContentView()
}
