//
//  ColorExtension.swift
//  FirebaseAuthTutorial
//
//  Created by Elvis Rexha on 07/03/2024.
//

import Foundation
import SwiftUI


extension LinearGradient {
    
    static func backgroundColors(color1: Color, color2: Color) -> LinearGradient {
        
        LinearGradient(colors: [color1, color2], startPoint: .top, endPoint: .bottom)
    }

}





