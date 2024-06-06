//
//  Enviroment.swift
//  ios-base
//
//  Created by Özkan Bölükbaş on 1.03.2022.
//

import Foundation

public enum AppEnvironment {
    
    enum Keys {
        enum Plist {
            static let baseURL = "BASE_URL"
        }
    }
    
    // MARK: - Plist
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()
    
    // MARK: - Plist values
    static let baseURL: String = {
        guard let baseURL = AppEnvironment.infoDictionary[Keys.Plist.baseURL] as? String else {
            fatalError("Root URL not set in plist for this environment")
        }
        return baseURL
    }()
    
}


