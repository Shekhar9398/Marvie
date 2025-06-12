//
//  SwiftUIView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI

struct SquareDesign: View {
    var width: Double = 164
    var height: Double = 161
    var color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: width, height: height)
            .foregroundColor(color)
    }
}

#Preview {
    SquareDesign(width: 164, height: 161, color: AppColor.red)
}
