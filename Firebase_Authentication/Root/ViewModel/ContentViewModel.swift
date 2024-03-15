//
//  ContentViewModel.swift
//  FirebaseAuthTutorial
//
//  Created by Elvis Rexha on 06/03/2024.
//

import Foundation
import Firebase
import Combine

class ContentViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        
        setupSubscribers()
        
    }
    
    func setupSubscribers() {
        
        AuthService.shared.$userSession
            .sink { [weak self] userSession in
                DispatchQueue.main.async {
                    self?.userSession = userSession
                }
            }
            .store(in: &cancellables)
        
    }
    
}
