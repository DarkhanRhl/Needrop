//
//  CustomButtonStyle.swift
//  Pictroll
//
//  Created by Maxime Aiguier on 30/07/2023.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(Color(UIColor(red: 1.0, green: 0.34, blue: 0.34, alpha: 1.0))) // #FF5757
            .cornerRadius(10)
            .fontWeight(.heavy)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0) // Effet d'échelle lorsqu'on appuie sur le bouton
    }
}
