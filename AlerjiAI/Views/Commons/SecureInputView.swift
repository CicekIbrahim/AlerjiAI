//
//  SecureInputView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//

import SwiftUI

struct SecureInputView: View {
    
    @Binding private var text: String
    @State private var isSecured: Bool = true
    private var title: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .trailing) {
            Group {
                if isSecured {
                    SecureField(title, text: $text)
                } else {
                    TextField(title, text: $text)
                }
            }
            
            Button(action: {
                isSecured.toggle()
            }) {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                    .accentColor(.gray)
                    .frame(height: 12)
                    .fixedSize()
            }
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 12)
        .background(Color.mercury)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        
    }
}
