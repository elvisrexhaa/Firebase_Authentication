//
//  CustomTextField.swift
//  FirebaseAuthTutorial
//
//  Created by Elvis Rexha on 06/03/2024.
//

import SwiftUI

struct CustomTextField: View {
    
    var text: Binding<String>
    var title: String
    var width: CGFloat
    
    @Binding var showPassword: Bool
    
    var body: some View {
        
        Group {
            if title == "Password" && !showPassword {
                SecureField(text: text) {
                    Text(title)
                        .foregroundStyle(.white.opacity(0.5))
                        .fontWeight(.semibold)
                        
                }
            } else {
                TextField(text: text) {
                    Text(title)
                        .foregroundStyle(.white.opacity(0.5))
                        .fontWeight(.semibold)
                        
                }
                
            }
        }
        .foregroundStyle(.white)
        .padding(.leading)
        .frame(width: UIScreen.main.bounds.width - 20, height: 60)
        .background(Color("bgColor2"), in:RoundedRectangle(cornerRadius: 10))
        .overlay(alignment: .trailing) {
            if title == "Password" {
                Button(action: {
                    withAnimation(.snappy()) {
                        showPassword.toggle()
                    }
                }, label: {
                    Image(systemName: showPassword ? "eye.fill" : "eye.slash")
                        .foregroundStyle(.white)
                        .padding(.trailing)
                })
                    
            }
        }
        
        
        
        
       
            
        
       
        
       
        
       
    }
}

#Preview {
   
    VStack {
        CustomTextField(text: .constant(""), title: "Password", width: UIScreen.main.bounds.width - 20, showPassword: .constant(false))
    }
    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    .background(
        ZStack {
            LinearGradient(colors: [Color("bgColor2"), Color("bgColor1")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        }
    
    )
    
    
}
