//
//  RegisterView.swift
//  FirebaseAuthTutorial
//
//  Created by Elvis Rexha on 06/03/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var registerViewModel = RegisterViewModel()
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                VStack(spacing: 10) {
                    
                    Text("Register \nBelow!")
                        .font(.system(size: 50))
                        .foregroundStyle(.white)
                        .bold()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
                        .padding(.leading)
                        .padding(.bottom, 30)
                        .padding(.top, 40)
                    
                    
                    
                    
                    CustomTextField(text: $registerViewModel.email, title: "Email", width: UIScreen.main.bounds.width - 20, showPassword: $registerViewModel.showPassword)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    
                    
                    CustomTextField(text: $registerViewModel.password, title: "Password", width: UIScreen.main.bounds.width - 20, showPassword: $registerViewModel.showPassword)
                    
                    CustomTextField(text: $registerViewModel.username, title: "Username", width: UIScreen.main.bounds.width - 20, showPassword: $registerViewModel.showPassword)
                    
                    
                    HStack {
                        Text("Register")
                            .foregroundStyle(.white).bold()
                            .font(.title)
                        
                        Spacer()
                        
                        Button {
                            registerViewModel.registerUser()
                        } label: {
                            
                            
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.red)
                                .shadow(color: .red, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                                .shadow(color: .white.opacity(0.3), radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 1)
                                .overlay {
                                    Image(systemName: "arrow.right")
                                        .imageScale(.large)
                                        .foregroundStyle(.white)
                                        .fontWeight(.semibold)
                                }
                            
                        }
                        
                        
                        
                    }
                    .padding(.top, 30)
                    .padding(.horizontal, 22)
                    
                    
                    
                    
                    
                    NavigationLink(destination: SignInView()) {
                        HStack (spacing: 2) {
                            Text("Already have an account?")
                            Text(" Sign In here!")
                            
                                .fontWeight(.semibold)
                            
                        }
                        .foregroundStyle(.white)
                        
                        
                        
                        
                    }
                    
                    .navigationBarBackButtonHidden()
                    .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .bottom)
                    
                    
                    
                    
                }
                
                .overlay(alignment: .topLeading, content: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .onTapGesture {
                            dismiss()
                        }
                })
                .padding(.top, 40)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(
                    ZStack {
                        LinearGradient.backgroundColors(color1: Color("bgColor2"), color2: Color("bgColor1"))
                            .ignoresSafeArea()
                    }
                    
                )
                
            }
            
            
            
        }
    }
}

#Preview {
    RegisterView()
}
