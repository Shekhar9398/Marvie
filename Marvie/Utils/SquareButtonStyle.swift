//
//  SquareButtonStyle.swift
//  Marvie
//
//  Created by Shekhar Manwar on 11/06/25.
//

import SwiftUI

struct SquareButtonStyle: ButtonStyle {
    var backgroundColor: Color
    var foregroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(AppFont.mediumSF(size: 24))
            .foregroundStyle(foregroundColor)
            .frame(width: 58, height: 58)
            .background(backgroundColor)
            .cornerRadius(13)
            .scaleEffect(configuration.isPressed ? 0.97 : 1.0)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


