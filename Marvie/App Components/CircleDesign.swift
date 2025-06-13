//
//  SwiftUIView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI

struct CircleDesign: View {
    var width: CGFloat
    var height: CGFloat 
    var color: Color
    
    var body: some View {
        Circle()
            .frame(width: width, height: height)
            .foregroundStyle(color)
    }
}

#Preview {
    CircleDesign(width: 121, height: 117, color: AppColor.red)
}
