//
//  UserViewModel.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 27.05.2024.
//

import Foundation
import Combine

class UserViewModel: BaseViewModel {
    private let databaseService = FirestoreDatabaseService()
    let allergens = [
        "Yumurta",
        "Süt ve süt ürünleri",
        "Fındık",
        "Badem",
        "Ceviz",
        "Karides",
        "İstiridye",
        "Yengeç",
        "Midye",
        "Buğday (glüten)",
        "Soya",
        "Balık",
        "Susam tohumu",
        "Mısır",
        "Kaju",
        "Antep fıstığı",
        "Çörek otu",
        "Ananas",
        "Mango",
        "Kivi",
        "Zencefil"
    ]

    
    @Published var user: User? = LocalStorage.shared.getUser()
    @Published var userAllergens: [String] = [] {
        didSet {
            
            updateUserAllergens()
        }
    }
    
     override init() {
         super.init()
        if let allergies = user?.allergies {
            userAllergens = allergies
        }
    }
    
    func updateUserAllergens() {
        if var user{
            user.allergies = userAllergens
            databaseService.updateUser(user) { error in
                if let error {
                    self.showError(error)
                }
                LocalStorage.shared.setUser(user: user)
            }
        }
    }
    

    
   


    

    
}

