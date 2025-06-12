//
//  SwiftUIView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI

import SwiftUI

struct OnboardingBackground: View {
    var body: some View {
        ZStack {
            // Background color
            AppColor.lightRed
                .ignoresSafeArea()
            
            //design with constraints
            VStack {
                HStack {
                    Spacer()
                    SquareDesign(width: 141, height: 138, color: AppColor.red)
                        .padding(.top, 0)
                        .padding(.trailing, -15)
                }
                
                HStack {
                    CircleDesign(color: AppColor.red)
                        .padding(.leading, -36)
                        .padding(.top, 58)
                    Spacer()
                }
                
                HStack{
                    SquareDesign(color: AppColor.red)
                        .padding(.top, 182)
                        .padding(.leading, 150)
                    Spacer()
                }
                
                HStack{
                    SquareDesign(width: 173, height: 171, color: AppColor.red)
                        .padding(.leading, -36)
                        .padding(.top, 36)
                    Spacer()
                }
                
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingBackground()
}
