//
//  SplashScreenView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 11/06/25.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var showOnboarding = false
    
    var body: some View {
        ZStack {
            //show onboarding
            if showOnboarding {
                OnboardingView()
            } else {
                //show splash screen
                Color(AppColor.yellow)
                    .ignoresSafeArea()
                    .overlay(
                        Text("Marvie")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    )
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                showOnboarding = true
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
   SplashScreenView()
}
