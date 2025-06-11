//
//  OnboardingView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentPage = 0
    @GestureState private var dragOffset: CGFloat = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                if currentPage == 1 {
                    SignInScreen()
                        .transition(.move(edge: .trailing))
                } else {
                    ZStack {
                        OnboardingBackground()
                        
                        VStack {
                            VStack(alignment: .leading) {
                                Text("Marvie")
                                    .font(AppFont.boldSF(size: 34))
                                    .bold()
                                    .foregroundStyle(AppColor.white)
                                    .padding(.top, 100)
                                
                                Text("iOS SwiftUI")
                                    .font(AppFont.mediumSF(size: 34))
                                    .bold()
                                    .foregroundStyle(AppColor.white)
                                
                                Text("Now it’s dark 🌚")
                                    .foregroundStyle(AppColor.white)
                                    .font(AppFont.mediumSF(size: 24))
                                    .padding(.top)
                                
                                Text("Marvie is your top-notch multipurpose\nSwiftUI with bright and friendly colors.\nFull-featured and handy. Trendy and\neye-catching. Created with care of\ndesigners and users.")
                                    .foregroundStyle(AppColor.white)
                                    .font(AppFont.regularSF(size: 22))
                                    .padding(.top)
                            }
                            
                            Image("catsPillar")
                                .offset(x: 95, y: 100)
                            
                            Spacer()
                            
                            // Dot Indicator
                            HStack(spacing: 12) {
                                Circle()
                                    .fill(currentPage == 0 ? AppColor.white : AppColor.white.opacity(0.4))
                                    .frame(width: 10, height: 10)
                                
                                Circle()
                                    .fill(currentPage == 1 ? AppColor.white : AppColor.white.opacity(0.4))
                                    .frame(width: 10, height: 10)
                            }
                            .padding(.bottom, 40)
                        }
                     
                    }
                    .transition(.move(edge: .leading))
                }
            }
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.4)) {
                    currentPage = 1
                }
            }
            .animation(.easeInOut(duration: 0.4), value: currentPage)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingView()
}
