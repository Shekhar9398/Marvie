//
//  SignUpScreen.swift
//  Marvie
//
//  Created by Shekhar Manwar on 11/06/25.
//

import SwiftUI
import FirebaseAuth

struct SignUpScreenTwo: View {
    @State private var createPassword: String = ""
    @State private var confirmPassword: String = ""
    @Environment(\.dismiss) private var dismiss
    @State private var gotoNextScreen: Bool = false
    @Binding var path: NavigationPath
    
    @Binding var userEmail: String
    
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
            
            Text("We take")
                .font(AppFont.boldSF(size: 60))
                .foregroundStyle(AppColor.white)
            
            Text("your privacy very seriously")
                .font(AppFont.regularSF(size: 30))
                .foregroundStyle(AppColor.gray1)
            
            
            //Create Password Textfield
            HStack {
                Image("passwordIcon")
                    .resizable()
                    .frame(width: 38, height: 48)
                    .padding(.trailing)
                
                ZStack(alignment: .leading) {
                    if createPassword.isEmpty {
                        Text("Create Password")
                            .foregroundStyle(AppColor.gray1)
                            .font(AppFont.mediumSF(size: 25))
                    }
                    
                    SecureField("", text: $createPassword)
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
            
            //Confirm Password textfield
            HStack {
                Image("passwordIcon")
                    .resizable()
                    .frame(width: 38, height: 48)
                    .padding(.trailing)
                
                ZStack(alignment: .leading) {
                    if confirmPassword.isEmpty {
                        Text("Confirm Password")
                            .foregroundStyle(AppColor.gray1)
                            .font(AppFont.mediumSF(size: 25))
                    }
                    
                    SecureField("", text: $confirmPassword)
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
                
                //goto next sign up screen (if valid user)
                Button {
                    signUpUser()
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
    
    // MARK: - Firebase Auth Sign Up Method
    private func signUpUser() {
        guard !createPassword.isEmpty, !confirmPassword.isEmpty else {
            print("Please fill in all fields")
            return
        }

        guard createPassword == confirmPassword else {
            print("password mismatched")
            return
        }

        Auth.auth().createUser(withEmail: userEmail, password: confirmPassword) { result, error in
            if let error = error as NSError? {
                print("Firebase createUser error: \(error.localizedDescription)")
                return
            }

            path.append("SignUp3")
        }
    }
}


#Preview {
    SignUpScreenTwo(path: .constant(NavigationPath()), userEmail: .constant("Test@gmail.com"))
}
