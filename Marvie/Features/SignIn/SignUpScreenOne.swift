//
//  SignUpScreen.swift
//  Marvie
//
//  Created by Shekhar Manwar on 11/06/25.
//

import SwiftUI

struct SignUpScreenOne: View {
    @State private var userEmail: String = ""
    @State private var userName: String = ""
    @Environment(\.dismiss) private var dismiss
    @State private var gotoNextScreen: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 30){
                
                Spacer()
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 45, height: 43)
                        .foregroundStyle(AppColor.accentGreen)
                        .shadow(color: AppColor.darkGreen, radius: 4, x: -2, y: 2)
                    Spacer()
                }
                
                Text("Hello!")
                    .font(AppFont.boldSF(size: 60))
                    .foregroundStyle(AppColor.white)
                
                Text("Lets introduce")
                    .font(AppFont.regularSF(size: 30))
                    .foregroundStyle(AppColor.gray1)
                
                
                //User FullName textfield
                HStack {
                    Image("usernameIcon")
                        .resizable()
                        .frame(width: 38, height: 48)
                        .padding(.trailing)
                    
                    ZStack(alignment: .leading) {
                        if userEmail.isEmpty {
                            Text("Your Email")
                                .foregroundStyle(AppColor.gray1)
                                .font(AppFont.mediumSF(size: 25))
                        }
                        
                        TextField("", text: $userEmail)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .font(AppFont.boldSF(size: 25))
                            .foregroundStyle(AppColor.gray1)
                    }
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.darkBackground2)
                    .padding(.horizontal, 50)
                
                //UserName textfield
                HStack {
                    Image("usernameIcon")
                        .resizable()
                        .frame(width: 38, height: 48)
                        .padding(.trailing)
                    
                    ZStack(alignment: .leading) {
                        if userName.isEmpty {
                            Text("Username")
                                .foregroundStyle(AppColor.gray1)
                                .font(AppFont.mediumSF(size: 25))
                        }
                        
                        TextField("", text: $userName)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .font(AppFont.boldSF(size: 25))
                            .foregroundStyle(AppColor.gray1)
                    }
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.darkBackground2)
                    .padding(.horizontal, 50)
                
                ///Next button
                HStack(alignment: .center, spacing: 20) {
                    //navigate back to welcome screen
                    Button{
                        dismiss()
                    }label: {
                        Image(systemName: "arrow.left")
                    }
                    .buttonStyle(SquareButtonStyle(backgroundColor: AppColor.darkGreen, foregroundColor: AppColor.accentGreen))
                    
                    //goto next sign up screen
                    Button {
                        gotoNextScreen = true
                    } label: {
                        Text("Next")
                    }
                    .buttonStyle(LongButtonStyle(backgroundColor: AppColor.accentGreen, foregroundColor: AppColor.white, length: 200))
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom)
                
                Spacer()
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AppColor.darkBackground1)
            .navigationBarBackButtonHidden()
        }
        .navigationDestination(isPresented: $gotoNextScreen) {
            SignUpScreenTwo(userEmail: userEmail)
        }

    }
}

#Preview {
   SignUpScreenOne()
}
