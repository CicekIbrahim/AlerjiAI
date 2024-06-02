//
//  ForgotPasswordView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 2.06.2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    @ObservedObject var viewModel: AuthViewModel
    @State var isSucces = false
    var body: some View {
        ZStack{
            BackgroundView(isRegister: $viewModel.isRegister)
                .onTapGesture {
                    hideKeyboard()
                }
            
            VStack(alignment: .trailing){
                HStack{
                    Spacer()
                    Button(action: {
                        viewModel.isPasswordForgot = false
                    }, label: {
                        Image(systemName: "x.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 30)
                            .tint(.apple)
                    })
                }
                .padding()
                
                Spacer()
            }
            VStack {
                
                Spacer()
                    .frame(height: 120)
                Image("logoApp")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .padding(.trailing, 10)
                    .onTapGesture {
                        hideKeyboard()
                    }
                
                Spacer()
                    .frame(height: 10)
                
                Text("Güvenle Tüketin, Özgürce Yaşayın!")
                    .font(.poppins(.regular, size: 15))
                    .foregroundStyle(.tundora)
                
                Spacer()
                    .frame(height: 40)
                
                InputView("E-Posta", text: $viewModel.email)
                
                Spacer()
                    .frame(height: 40)
                Button(action: {
                    withAnimation {
                        hideKeyboard()
                        viewModel.forgotPassword()
                    }
                }, label: {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: 45)
                        .foregroundStyle(.apple)
                        .overlay {
                            Text("Şifremi Sıfırla")
                                .foregroundStyle(.white)
                                .font(.poppins(.semiBold, size: 20))
                        }
                })
                
                Spacer()
                    .frame(height: 10)
                Spacer()
            }
            .alert(isPresented: $viewModel.showError) {
                    Alert(
                        title: Text("Hata"),
                        message: Text(viewModel.errorMessage)
                    )
                }
            .alert(isPresented: $viewModel.isPasswordResetSuccess) {
                    Alert(
                        title: Text("Başarılı"),
                        message: Text("Şifre sıfırlama linki E-Posta adresinize gönderilmiştir."),
                        dismissButton: .default(Text("Tamam"), action: {
                            viewModel.isPasswordForgot = false
                        })
                    )
                }
            .padding(.horizontal, 40)
        }
    }
}

#Preview {
    ForgotPasswordView(viewModel: AuthViewModel())
}
