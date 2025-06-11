//
//  SignUpScreen.swift
//  Marvie
//
//  Created by Shekhar Manwar on 11/06/25.
//

import SwiftUI

struct SignUpScreenThree: View {
    @State private var userPhone: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            
            Spacer()
            
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 45, height: 43)
                    .foregroundStyle(AppColor.accentGreen)
                    .shadow(color: AppColor.darkGreen, radius: 4, x: -2, y: 2)
                Spacer()
            }
            
            Text("Sign Up!")
                .font(AppFont.boldSF(size: 60))
                .foregroundStyle(AppColor.white)
            
            Text("To start Working")
                .font(AppFont.regularSF(size: 30))
                .foregroundStyle(AppColor.gray1)
                .padding(.bottom)
            
            
            //Country Selection and Phone
            HStack {
                #warning("Implement country selection")
                
                Image(systemName: "flag")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(AppColor.white)
                    .padding(.trailing)
                
                ZStack(alignment: .leading) {
                    if userPhone.isEmpty {
                        Text("Phone Number")
                            .foregroundStyle(AppColor.gray1)
                            .font(AppFont.mediumSF(size: 25))
                    }
                    
                    TextField("", text: $userPhone)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .font(AppFont.boldSF(size: 25))
                        .foregroundStyle(AppColor.gray1)
                }
                
            }
            .padding(.leading, 50)
            
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
                    //not decided
                } label: {
                    Text("Done")
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
}

#Preview {
    SignUpScreenThree()
}
