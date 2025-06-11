//
//  SwiftUIView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI

struct RedCircleView: View {
    var width: CGFloat = 121
    var height: CGFloat = 117
    
    var body: some View {
        Circle()
            .frame(width: width, height: height)
            .foregroundStyle(AppColor.red)
    }
}

#Preview {
    RedCircleView(width: 121, height: 117)
}
