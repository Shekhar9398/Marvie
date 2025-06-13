//
//  ContactScreen.swift
//  Marvie
//
//  Created by Shekhar Manwar on 12/06/25.
//

import SwiftUI

struct ContactScreen: View {
    @State private var viewModel = ContactViewModel()
    @State private var profileImage = ["👩🏾", "👨🏻", "👩🏻‍🎓", "👨🏼‍💻"]

    var body: some View {
        ZStack {
            AppColor.darkBackground3
                .ignoresSafeArea()

            List(viewModel.contacts) { contact in
                HStack(alignment: .center, spacing: 15) {
                    // Contact image
                    ZStack {
                        Circle()
                            .fill(AppColor.randomColor)
                            .frame(width: 60, height: 60)

                        Text(profileImage.randomElement() ?? "👩🏻‍🎓")
                            .font(.title)
                    }

                    // Contact name and phone
                    VStack(alignment: .leading, spacing: 5) {
                        Text(contact.name)
                            .font(AppFont.boldSF(size: 22))
                            .foregroundStyle(AppColor.white)

                        Text(contact.phone)
                            .font(AppFont.mediumSF(size: 18))
                            .foregroundStyle(AppColor.white.opacity(0.8))
                    }
                }
                .padding(.vertical, 8)
                .listRowBackground(Color.clear)
            }
            .scrollContentBackground(.hidden)
            .listStyle(.plain)
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ContactScreen()
}
