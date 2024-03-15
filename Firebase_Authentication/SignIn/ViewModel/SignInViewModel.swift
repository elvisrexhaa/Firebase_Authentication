//
//  SignInViewModel.swift
//  FirebaseAuthTutorial
//
//  Created by Elvis Rexha on 06/03/2024.
//

import Foundation

class SignInViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    
    func signIn() {
        
        Task {
            try await AuthService.shared.signIn(with: email, password: password)
        }
        
    }
    
}
