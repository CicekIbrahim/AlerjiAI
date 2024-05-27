//
//  ScanView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 4.05.2024.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)
            Image("logoApp")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            Spacer()
                .frame(height: 30)
            
            Text("Hızlıca tarat, Güvenle Tüket")
                .font(.poppins(.regular, size: 15))
                .foregroundStyle(Color.tundora)
            
            Spacer().frame(height: 50)
            
            Button(action: {
                
            }, label: {
                Image(systemName: "viewfinder")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 58)
                    .tint(.doveGray)
                    .padding(.all, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 14)
                            .foregroundStyle(Color.mercury)
                    )
                    
            })
            
            Spacer()
                .frame(height: 30)
            
            Text("Taratmak için lütfen butona basınız")
                .font(.poppins(.regular, size: 15))
                .foregroundStyle(Color.tundora)
            
            Spacer()
                .frame(height: 100)
            HStack{
                Image(systemName: "clock.arrow.circlepath")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
                    .foregroundStyle(Color.tundora)
                
                Text("Geçmiş Taramalar")
                    .font(.poppins(.regular, size: 15))
                    .foregroundStyle(Color.tundora)
                
            }
            
            
            
            
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    ScanView()
}

struct ScanItemViev: View {
    var scan: Scan
    var body: some View {
        HStack{
            Image(scan.product?.logo ?? "")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            Spacer()
            Text(scan.product?.name ?? "")
                .font(.poppins(.regular, size: 15))
                .foregroundStyle(Color.tundora)
            Spacer()
            
            Text((scan.isAllergic ?? false) ? "Alerjen Var" : "Alerjen Yok")
                .font(.poppins(.bold, size: 15))
                .foregroundStyle((scan.isAllergic ?? false) ? Color.red : Color.green)
        }
        .tint(.doveGray)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .foregroundStyle(Color.mercury)
        )
    }
}
