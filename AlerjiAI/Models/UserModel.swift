//
//  UserModel.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//

import Foundation


struct User: Codable {
    var id: String
    var name : String?
    var profileImage: String?
    var surname: String?
    var email: String?
    var allergies : [String]?
   
    func dictionary() -> [String:Any] {
        return (try? JSONSerialization.jsonObject(with: JSONEncoder().encode(self))) as? [String: Any] ?? [:]
    }
    
}
