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
                    RedSquareView(width: 141, height: 138)
                        .padding(.top, 0)
                        .padding(.trailing, -15)
                }
                
                HStack {
                    RedCircleView()
                        .padding(.leading, -36)
                        .padding(.top, 58)
                    Spacer()
                }
                
                HStack{
                    RedSquareView()
                        .padding(.top, 182)
                        .padding(.leading, 150)
                    Spacer()
                }
                
                HStack{
                    RedSquareView(width: 173, height: 171)
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
