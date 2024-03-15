//
//  RegisterViewModel.swift
//  FirebaseAuthTutorial
//
//  Created by Elvis Rexha on 06/03/2024.
//

import Foundation


class RegisterViewModel: ObservableObject {
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var username: String = ""
    
    @Published var completeRegistration: Bool = false
    
    @Published var showPassword: Bool = false
    @Published var showSignInView: Bool = false
    
    
    
    
    func registerUser() {
        
        Task {
            try await AuthService.shared.registerUser(with: email, password: password, username: username)
            completeRegistration = true
        }
        
        
    }
    
}
