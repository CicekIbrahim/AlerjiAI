//
//  ViewExt.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 2.06.2024.
//

import Foundation
import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
