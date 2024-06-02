//
//  LoginRegisterView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 5.05.2024.
//

import SwiftUI

struct LoginRegisterView: View {
    @StateObject var viewModel: AuthViewModel
   
    var body: some View {
        ZStack(content: {
            BackgroundView(isRegister: $viewModel.isRegister)
                .onTapGesture {
                    hideKeyboard()
                }
            
            VStack {
                Spacer()
                    .frame(height: viewModel.isRegister ? 30 : 100)
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
                
                if viewModel.isRegister{
                    RegisterView(viewModel: viewModel)
                } else {
                    LoginView(viewModel: viewModel)
                }
                
                Spacer()
            }
            .padding(.horizontal, 40)
            .alert(isPresented: $viewModel.showError) {
                    Alert(
                        title: Text("Hata"),
                        message: Text(viewModel.errorMessage)
                    )
                }
            .sheet(isPresented: $viewModel.isPasswordForgot) {
                ForgotPasswordView(viewModel: viewModel)
            }
            if (viewModel.isLoading && !viewModel.isPasswordForgot) {
                Color.black.opacity(0.58)
                    .ignoresSafeArea(.all)
                
                CustomLoadingAnimation()
            }
        }
        )
    }
}

#Preview {
    LoginRegisterView(viewModel: AuthViewModel())
}


struct RegisterView: View {
    @ObservedObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack{
            InputView("E-posta", text: $viewModel.email)
            
            Spacer()
                .frame(height: 40)
            
            InputView("İsim", text: $viewModel.name)
            
            Spacer()
                .frame(height: 40)
            
            InputView("Soyisim", text: $viewModel.surname)
            
            Spacer()
                .frame(height: 40)
            
            SecureInputView("Şifre", text: $viewModel.password)
            
            Spacer()
                .frame(height: 40)
            
            SecureInputView("Tekrar Şifre", text: $viewModel.passwordAgain)
            
            Spacer()
                .frame(height: 40)
            
            Button(action: {
                withAnimation {
                    hideKeyboard()
                    viewModel.register()
                }
            }, label: {
                RoundedRectangle(cornerRadius: 12)
                    .frame(height: 45)
                    .foregroundStyle(.apple)
                    .overlay {
                        Text("Kayıt Ol")
                            .foregroundStyle(.white)
                            .font(.poppins(.semiBold, size: 20))
                    }
            })
            
            Spacer()
                .frame(height: 10)
            
            HStack{
                Text("Hesabın var mı?")
                    .font(.poppins(.semiBold, size: 18))
                    .foregroundStyle(.tundora)
                Text("Giriş Yap")
                    .font(.poppins(.bold, size: 18))
                    .foregroundStyle(.apple)
                    .underline()
                    .onTapGesture {
                        withAnimation {
                            viewModel.isRegister = false
                        }
                    }
            }
        }
    }
}

struct LoginView: View {
    @ObservedObject var viewModel: AuthViewModel
    var body: some View {
        VStack{
            InputView("E-Posta", text: $viewModel.email)
            
            Spacer()
                .frame(height: 40)
            
            SecureInputView("Şifre", text: $viewModel.password)
            
            HStack{
                Button(action: {
                    viewModel.isPasswordForgot = true
                }, label: {
                    Text("Şifremi Unuttum")
                        .font(.poppins(.light, size: 12))
                        .foregroundStyle(.tundora.opacity(0.7))
                        .padding([.top,.leading], 4)
                })
                    
                
                Spacer()
            }
            
            Spacer()
                .frame(height: 40)
            
            Button(action: {
                withAnimation {
                    hideKeyboard()
                    viewModel.login()
                }
            }, label: {
                RoundedRectangle(cornerRadius: 12)
                    .frame(height: 45)
                    .foregroundStyle(.apple)
                    .overlay {
                        Text("Giriş Yap")
                            .foregroundStyle(.white)
                            .font(.poppins(.semiBold, size: 20))
                    }
            })
            
            Spacer()
                .frame(height: 10)
            
            HStack{
                Text("Hesabın yok mu?")
                    .font(.poppins(.semiBold, size: 18))
                    .foregroundStyle(.tundora)
                Text("Kayıt Ol")
                    .font(.poppins(.bold, size: 18))
                    .foregroundStyle(.apple)
                    .underline()
                    .onTapGesture {
                        withAnimation {
                            viewModel.isRegister = true
                        }
                    }
            }
        }
    }
}

struct BackgroundView: View {
    @Binding var isRegister: Bool
    var body: some View {
        Image("icHandReverse")
            .resizable()
            .scaledToFit()
            .frame(height: 215)
            .position(x: 70, y: 20)
            .scaleEffect(x: isRegister ? -1 : 1, y: 1.0)
        
        VStack{
            Spacer()
            Image("icHand")
                .resizable()
                .scaledToFit()
                .frame(height: 215)
                .offset(x: 100, y: 10)
                .scaleEffect(x: isRegister ? -1 : 1, y: 1.0)
        }
        .ignoresSafeArea()
    }
}
