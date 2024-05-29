//
//  Product.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 27.05.2024.
//

import Foundation

struct Product: Codable {
    var id = UUID().uuidString
    var name: String?
    var logo: String?
    var ingredients: [String]?
    
    func dictionary() -> [String:Any] {
        return (try? JSONSerialization.jsonObject(with: JSONEncoder().encode(self))) as? [String: Any] ?? [:]
    }
    
}




