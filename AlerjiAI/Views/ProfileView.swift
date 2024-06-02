//
//  ProfileView.swift
//  AlerjiAI
//
//  Created by Ibrahim Cicek on 4.05.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = UserViewModel()
    @State private var isSheetPresented = false
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)
            Image("logoApp")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            ScrollView {
                VStack {
                    Spacer()
                        .frame(height: 30)
                    Image("icUser")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 82)
                        .clipShape(Circle())
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text(viewModel.user?.name ?? "")
                        .font(.poppins(.semiBold, size: 26))
                        .foregroundStyle(Color.tundora)
                    Text(viewModel.user?.surname ?? "")
                        .font(.poppins(.semiBold, size: 26))
                        .foregroundStyle(Color.tundora)
                    
                    Spacer()
                        .frame(height: 40)
                    
                    VStack{
                        HStack{
                            Spacer()
                            Text("Alerjenlerim")
                                .font(.poppins(.semiBold, size: 18))
                                .foregroundStyle(Color.tundora)
                            Spacer()
                        }
                        ForEach(viewModel.userAllergens, id: \.self) { item in
                            Text(item)
                                .font(.poppins(.regular, size: 14))
                                .foregroundStyle(Color.tundora)
                        }
                        
                    }
                    .padding(.all, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .foregroundStyle(Color.mercury)
                    )
                    .overlay {
                        Button(action: {
                            isSheetPresented.toggle()
                        }, label: {
                            Image(systemName: "pencil.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 20)
                                .tint(.apple)
                        })
                        .offset(x: 120, y: -10)
                    }
                    .sheet(isPresented: $isSheetPresented) {
                        AllergenSelectionView(viewModel: viewModel, isSheetPresented: $isSheetPresented)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    Button(action: {
                        withAnimation {
                            authViewModel.logout()
                        }
                    }, label: {
                        RoundedRectangle(cornerRadius: 12)
                            .frame(height: 45)
                            .foregroundStyle(.red)
                            .overlay {
                                Text("Çıkış Yap")
                                    .foregroundStyle(.white)
                                    .font(.poppins(.semiBold, size: 20))
                            }
                    })
                    
                    Spacer()
                }
                .padding(.horizontal, 50)
            }
        }
        .alert(isPresented: $viewModel.showError) {
                Alert(
                    title: Text("Hata"),
                    message: Text(viewModel.errorMessage)
                )
            }
    }
}

struct AllergenSelectionView: View {
    @ObservedObject var viewModel: UserViewModel
    @State private var selectedAllergens = Set<String>()
    @Binding var isSheetPresented : Bool
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.allergens, id: \.self) { allergen in
                    MultipleSelectionRow(title: allergen, isSelected: selectedAllergens.contains(allergen)) {
                        if selectedAllergens.contains(allergen) {
                            selectedAllergens.remove(allergen)
                        } else {
                            selectedAllergens.insert(allergen)
                        }
                    }
                }
            }
            .navigationTitle("Alerjenleri Düzenle")
            .tint(.apple)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Kaydet") {
                        viewModel.userAllergens = Array(selectedAllergens)
                        isSheetPresented = false
                        
                    }
                    .tint(.apple)
                }
            }
            .onAppear {
                selectedAllergens = Set(viewModel.userAllergens)
            }
        }
    }
}

struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(title)
                    .foregroundStyle(.apple)
                    .font(.poppins(.semiBold, size: 20))
                    .padding(.vertical, 5)
                if isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                        .tint(.apple)
                }
            }
        }
    }
}


#Preview {
    ProfileView()
}
