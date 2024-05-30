//
//  CustomLoadingAnimation.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 30.05.2024.
//

import SwiftUI

struct CustomLoadingAnimation: View {
    @State private var isLoading = false
     
        var body: some View {
            ZStack {
     
                Circle()
                    .stroke(Color(.systemGray5), lineWidth: 14)
                    .frame(width: 100, height: 100)
     
                Circle()
                    .trim(from: 0, to: 0.2)
                    .stroke(Color.green, lineWidth: 7)
                    .frame(width: 100, height: 100)
                    .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                    .onAppear() {
                        self.isLoading = true
                }
            }
        }
}

#Preview {
    CustomLoadingAnimation()
}
