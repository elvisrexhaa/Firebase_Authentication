//
//  Home View.swift
//  FirebaseAuthTutorial
//
//  Created by Elvis Rexha on 06/03/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var animateTitle: Bool = false
 
    var body: some View {
        ZStack {
            
            LinearGradient.backgroundColors(color1: Color("bgColor2"), color2: Color("bgColor1"))
                .ignoresSafeArea()
            
            
            VStack(spacing: 20) {
                Text("Welcome to the home view!")
                    .font(.title2)
                    .foregroundStyle(.white).bold()
                    .offset(y: animateTitle ? 0 : 600)
                    .scaleEffect(animateTitle ? 1 : 0.4)
                    .opacity(animateTitle ? 1 : 0.1)
                
                Button {
                    AuthService.shared.signUserOut()
                } label: {
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.forward")
                            .foregroundStyle(.white).bold()
                        
                        Text("Sign Out")
                            .foregroundStyle(.white).bold()
                            
                            
                            
                    }
                    .frame(width: 300, height: 60)
                    .background(.red, in: RoundedRectangle(cornerRadius: 10))
                    .shadow(color: .red, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                    .shadow(color: .white.opacity(0.3), radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 1)
                    .offset(y: animateTitle ? 0 : 600)
                    .scaleEffect(animateTitle ? 1 : 0.2)
                    .opacity(animateTitle ? 1 : 0.1)
                }
                
            }
            
           
        }
        .onAppear {
            withAnimation(.snappy(duration: 1)) {
                animateTitle = true
            }
        }
        
        
        
    }
}

#Preview {
    HomeView()
}
