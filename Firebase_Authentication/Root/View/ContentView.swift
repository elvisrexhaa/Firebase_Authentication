//
//  ContentView.swift
//  FirebaseAuthTutorial
//
//  Created by Elvis Rexha on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var contentViewModel = ContentViewModel()
    var body: some View {
        
        ZStack {
            if contentViewModel.userSession != nil {
                HomeView()
            } else {
                SignInView()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
