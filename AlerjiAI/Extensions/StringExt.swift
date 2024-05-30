//
//  StringExt.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 30.05.2024.
//

import Foundation

extension String {
    func toTitleCase() -> String {
        return self
            .split(separator: "-")
            .map { $0.capitalized }
            .joined(separator: " ") 
    }
}
