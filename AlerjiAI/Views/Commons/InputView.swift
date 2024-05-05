//
//  InputView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//

import SwiftUI

struct InputView: View {
    
    @Binding private var text: String
    private var title: String
    
    init(_ title: String, text: Binding<String>) {
        self.title = title
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .trailing) {
            TextField(title, text: $text)
                .padding(.vertical, 14)
                .padding(.horizontal, 12)
                .background(Color.mercury)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}
