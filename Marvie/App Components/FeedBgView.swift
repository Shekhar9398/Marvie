//
//  RoundedFeedBackground.swift
//  Marvie
//
//  Created by Shekhar Manwar on 12/06/25.
//

import SwiftUI

struct FeedBgView: View {
    
    let primaryColors: [Color] = [AppColor.red, AppColor.yellow, AppColor.accentGreen, AppColor.purple]
    let secondaryColors: [Color] = [AppColor.lightRed, AppColor.lightYellow, AppColor.darkGreen, AppColor.lightPurple]
    
    // Get a consistent random index
    let randomIndex = Int.random(in: 0..<4)
    
    var body: some View {
        let backgroundColor = primaryColors[randomIndex]
        let shapeColor = secondaryColors[randomIndex]
        
        ZStack(alignment: .topLeading) {
            // Background
            RoundedRectangle(cornerRadius: 15)
                .foregroundStyle(backgroundColor)
                .frame(width: 319, height: 187)
                .shadow(radius: 5)
            
            // Square
            SquareDesign(width: 100, height: 100, color: shapeColor)
                .offset(x: 0, y: 0)
            
            // Circle
            CircleDesign(width: 60, height: 60, color: shapeColor)
                .offset(x: 140, y: 60)
            
            // Rounded Square
            RoundedRectangle(cornerRadius: 12)
                .fill(shapeColor)
                .frame(width: 80, height: 80)
                .offset(x: 240, y: 95)
        }
        .frame(width: 319, height: 187)
    }
}

#Preview {
    FeedBgView()
}
