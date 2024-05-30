//
//  Scan.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 27.05.2024.
//

import Foundation

struct Scan : Codable, Identifiable {
    var id = UUID().uuidString
    var product: Product?
    var coughtAllergens: [String]?
    var isAllergic: Bool?
    var userId : String?
    func dictionary() -> [String:Any] {
        return (try? JSONSerialization.jsonObject(with: JSONEncoder().encode(self))) as? [String: Any] ?? [:]
    }
}
