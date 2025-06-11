//
//  SwiftUIView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI

struct RedSquareView: View {
    var width: Double = 164
    var height: Double = 161
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: width, height: height)
            .foregroundStyle(AppColor.red)
    }
}

#Preview {
    RedSquareView(width: 164, height: 161)
}
