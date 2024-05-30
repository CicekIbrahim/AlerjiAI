//
//  ScanViewModel.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 29.05.2024.
//

import SwiftUI
import Alamofire

class ScanViewModel: BaseViewModel {
    @Published var isLoading = false
    @Published var scannedProduct: Product? = nil
    private let databaseService = FirestoreDatabaseService()
    @Published var user = LocalStorage.shared.getUser()
    @Published var scanResult: Scan? = nil
    @Published var lastScans: [Scan]? = []
    
    override init() {
        super.init()
        getScans()
    }

    
    func uploadImage(_ image: UIImage) {
        isLoading = true
        
        guard let imageData = image.jpegData(compressionQuality: 0.8) else { return }
        
        let url = "https://5hdf4m1l-5000.euw.devtunnels.ms/detect"
        let headers: HTTPHeaders = [
            "Content-type": "multipart/form-data"
        ]
        
        AF.upload(multipartFormData: { multipartFormData in
            multipartFormData.append(imageData, withName: "image", fileName: "image.jpg", mimeType: "image/jpeg")
        }, to: url, headers: headers).responseJSON { response in
            switch response.result {
            case .success(let value):
                if let json = value as? [String: Any], let responseString = json["response"] as? String {
                    let formattedResponse = self.formatResponse(responseString)
                    self.fetchProduct(named: formattedResponse) { product in
                        self.checkAllergens(in: product) {
                            self.isLoading = false
                            if let scan = self.scanResult {
                                self.databaseService.saveScan(scan) { error in
                                    if let error {
                                        self.showError(error)
                                        return
                                    }
                                    self.lastScans?.append(scan)
                                }
                            }
                        }
                    }
                }
            case .failure(let error):
                print("Error uploading image: \(error)")
                self.isLoading = false
            }
        }
    }
    
    func formatResponse(_ response: String) -> String {
        return response
            .lowercased()
            .replacingOccurrences(of: " ", with: "-")
            .replacingOccurrences(of: "ü", with: "u")
            .replacingOccurrences(of: "ö", with: "o")
            .replacingOccurrences(of: "ı", with: "i")
            .replacingOccurrences(of: "ğ", with: "g")
            .replacingOccurrences(of: "ş", with: "s")
            .replacingOccurrences(of: "ç", with: "c")
    }
    
    func fetchProduct(named name: String, completion: @escaping (Product) -> Void) {
        databaseService.getProduct(withName: name) { product, error in
            if let error = error {
                self.showError(error)
            } else {
                self.scannedProduct = product
                if let product {
                    completion(product)
                }
            }
            
        }
    }
    
    private func checkAllergens(in product: Product, completion: @escaping () -> Void) {
           if let user {
               var coughtAllergens: [String] = []
               
               if let ingredients = product.ingredients {
                   for ingredient in ingredients {
                       for allergen in user.allergies ?? [] {
                           if ingredient.localizedCaseInsensitiveContains(allergen) {
                               coughtAllergens.append(ingredient)
                           }
                       }
                   }
               }
               
               let isAllergic = !coughtAllergens.isEmpty
               let scan = Scan(
                   product: product,
                   coughtAllergens: coughtAllergens,
                   isAllergic: isAllergic,
                   userId: user.id
               )
               
               self.scanResult = scan
               completion()
           }
       }
    
    func getScans() {
        self.databaseService.getAllScans(for: self.user?.id ?? "") { scans, error in
            if let error {
                self.showError(error)
                return
            }
            self.lastScans = scans
        }
    }
    
}
