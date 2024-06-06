//
//  ScanView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 4.05.2024.
//

import SwiftUI

struct ScanView: View {
    @StateObject private var viewModel = ScanViewModel()
    @State private var isCameraViewPresented = false
    @State private var isScanSheetPresented = false
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        ZStack{
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
                    isCameraViewPresented = true
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
                    .frame(height: 50)
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
                
                ScrollView {
                    ForEach(viewModel.lastScans?.prefix(3) ?? []) { scan in
                        ScanItemViev(scan: scan)
                            .onTapGesture {
                                viewModel.scanResult = scan
                                isScanSheetPresented = true
                            }
                    }
                }
                
                
                
                
                Spacer()
            }
            .padding(.horizontal, 20)
            
            if (isScanSheetPresented || viewModel.isLoading) {
                Color.black.opacity(0.58)
                    .ignoresSafeArea(.all)
            }
            
            if (viewModel.isLoading) {
                CustomLoadingAnimation()
            }
        }
        .alert(isPresented: $viewModel.showError) {
                Alert(
                    title: Text("Hata"),
                    message: Text(viewModel.errorMessage)
                )
            }
        .sheet(isPresented: $isCameraViewPresented) {
            CameraView(isPresented: $isCameraViewPresented, viewModel: viewModel)
        }
        .sheet(isPresented: $isScanSheetPresented, content: {
            if let scanResult = viewModel.scanResult{
                ScanSheetView(scan: scanResult, isPresented: $isScanSheetPresented)
                    .presentationDetents([.fraction(0.7)])
                    .presentationCornerRadius(16)
            }
        })
        .onReceive(viewModel.$scanResult) { scan in
            if scan != nil {
                isScanSheetPresented = true
            }
        }
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
