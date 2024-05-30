//
//  ScanSheetView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 30.05.2024.
//

import SwiftUI

struct ScanSheetView: View {
    var scan: Scan
    @Binding var isPresented: Bool
    var body: some View {
        ZStack{
            SheetBackgroundView()
            VStack(spacing: 20) {
                
                Divider()
                    .frame(width: 80, height: 6)
                    .background(Color.tundora)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Spacer()
                    .frame(height: 5)
                
                Text("Tarama Tamamlandı !")
                    .font(.poppins(.semiBold, size: 20))
                    .foregroundStyle(Color.tundora)
                
                HStack {
                    Text("Ürün: ")
                        .font(.poppins(.regular, size: 15))
                        .foregroundStyle(Color.tundora)
        
                    Text(scan.product?.name?.toTitleCase() ?? "Ürün adı yok")
                        .font(.poppins(.regular, size: 20))
                }
                
                if let logoName = scan.product?.logo, let image = UIImage(named: logoName) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                } else {
                    Text("Logo bulunamadı")
                        .font(.poppins(.regular, size: 15))
                        .foregroundStyle(Color.tundora)
                }
                
                VStack(alignment: .center, spacing: 10) {
                    Text("Alerjen Maddeler:")
                        .font(.poppins(.regular, size: 15))
                        .foregroundStyle(Color.tundora)
                        
                    
                    if let allergens = scan.coughtAllergens, !allergens.isEmpty {
                        ScrollView{
                            ForEach(allergens, id: \.self) { allergen in
                                Text(allergen)
                                    .font(.poppins(.regular, size: 20))
                                    .foregroundColor(.red)
                                    
                            }
                            
                        }
                    } else {
                        Text("Alerjen bulunamamıştır")
                            .font(.poppins(.regular, size: 20))
                            .foregroundColor(.green)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    isPresented = false
                }) {
                    Text("Kapat")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.apple)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

struct ScanSheetView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleProduct = Product(name: "Mars", logo: "marsLogo")
        let sampleScan = Scan(product: sampleProduct, coughtAllergens: ["Soya", "Balık", "Susam Tohumu"], isAllergic: true)
        ScanSheetView(scan: sampleScan, isPresented: .constant(true))
    }
}

struct SheetBackgroundView: View {
    var body: some View {
        Image("icHandReverse")
            .resizable()
            .scaledToFit()
            .frame(height: 215)
            .position(x: 90, y: 40)
            .scaleEffect(x: -1 , y: 1.0)
        
        VStack{
            Spacer()
            Image("icHand")
                .resizable()
                .scaledToFit()
                .frame(height: 180)
                .offset(x: 100, y: 10)
                .scaleEffect(x: -1, y: 1.0)
        }
        .ignoresSafeArea()
    }
}

