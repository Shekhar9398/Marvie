//
//  HomeScreenView.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI

struct HomeScreenView: View {
    @Binding var path: NavigationPath

    var body: some View {
        
        #warning("Need to implement HomeScreen soon")
        
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 30) {
                ForEach(0...50, id: \.self) { num in
                    Text("HomeScreen Row \(num)")
                        .bold()
                        .foregroundStyle(.white)
                }
            }
            .padding(.horizontal)
            .padding(.top, 40)
            .navigationTitle("HomeScreen")
        }
        .background(AppColor.darkBackground2)
        .ignoresSafeArea()
    }
}

#Preview {
    @Previewable @State var previewPath = NavigationPath()
    return HomeScreenView(path: $previewPath)
}
