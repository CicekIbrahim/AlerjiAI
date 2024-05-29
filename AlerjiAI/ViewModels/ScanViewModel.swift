//
//  ScanViewModel.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 29.05.2024.
//

import SwiftUI
import Alamofire

class ScanViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var scannedProduct: [String: Any]? = nil
    private let databaseService = FirestoreDatabaseService()
    

    
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
                    self.fetchProduct(named: formattedResponse) {
                        self.isLoading = false
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
    
    func fetchProduct(named name: String, completion: @escaping () -> Void) {
        databaseService.getProduct(withName: name) { product, error in
            if let error = error {
                print("Ürünler veri tabanında aranırken bir sorun oluştu: \(error)")
            } else {
                self.scannedProduct = product
                print("Çekilen Ürün: \(self.scannedProduct ?? [:])")
            }
            completion()
        }
    }
}
