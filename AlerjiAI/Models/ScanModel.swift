//
//  Scan.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 27.05.2024.
//

import Foundation

struct Scan : Codable {
    var id: String?
    var product: Product?
    var coughtAllergens: [String]?
    var isAllergic: Bool?
}
