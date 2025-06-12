//
//  ContectView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 12/06/25.
//
import SwiftUI

struct ContectView: View {
    @State private var selectedTab: Int = 0
    @Binding var path: NavigationPath

    var body: some View {
        ZStack(alignment: .bottom) {
            
            // Fix: Add this full-screen background layer
            AppColor.darkBackground3
                .ignoresSafeArea()
            
            // Main content
            TabView(selection: $selectedTab) {
                HomeScreenView(path: $path)
                    .tag(0)
                    .ignoresSafeArea()
                
                ContactScreen()
                    .tag(1)
                    .ignoresSafeArea()
            }
            .ignoresSafeArea()
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            // Custom tab bar
            HStack {
                Spacer()
                
                Button(action: {
                    selectedTab = 0
                }) {
                    VStack {
                        Image(systemName: "house.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(selectedTab == 0 ? .white : .gray)
                    }
                }
                
                Spacer()
                
                Button(action: {
                    selectedTab = 1
                }) {
                    VStack {
                        Image(systemName: "message.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .foregroundColor(selectedTab == 1 ? .white : .gray)
                    }
                }
                
                Spacer()
            }
            .frame(height: 80)
            .background(AppColor.darkBackground2)
            .clipShape(RoundedCornersShape(corners: [.topLeft, .topRight], radius: 25))
            .shadow(color: AppColor.darkBackground3, radius: 5)
            .ignoresSafeArea(edges: .bottom)
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    ContectView(path: .constant(NavigationPath()))
}
