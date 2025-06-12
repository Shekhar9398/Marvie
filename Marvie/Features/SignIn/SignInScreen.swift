//
//  WelcomeScreen.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI
import FirebaseAuth

struct SignInScreen: View {
    @State private var userEmail: String = ""
    @State private var userPassword: String = ""
    @State private var path = NavigationPath()
    @State private var signUpEmail: String = ""

    
    var body: some View {
        ///MARK:- Welcome Screen
        NavigationStack(path: $path){
            VStack(alignment: .leading, spacing: 30){
                
                Spacer()
                
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 45, height: 43)
                        .foregroundStyle(AppColor.accentGreen)
                        .shadow(color: AppColor.darkGreen, radius: 4, x: -2, y: 2)
                    Spacer()
                }
                
                Text("Welcome!")
                    .font(AppFont.boldSF(size: 60))
                    .foregroundStyle(AppColor.white)
                
                Text("Sign in to continue")
                    .font(AppFont.regularSF(size: 30))
                    .foregroundStyle(AppColor.gray1)
                
                
                //user textfield
                HStack {
                    Image("usernameIcon")
                        .resizable()
                        .frame(width: 38, height: 48)
                        .padding(.trailing)
                    
                    ZStack(alignment: .leading) {
                        if userEmail.isEmpty {
                            Text("john\("@")gmail.com")
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
                
                //password textfield
                HStack {
                    Image("passwordIcon")
                        .resizable()
                        .frame(width: 38, height: 48)
                        .padding(.trailing)
                    
                    ZStack(alignment: .leading) {
                        if userPassword.isEmpty {
                            Text("● ● ● ● ● ●")
                                .foregroundStyle(AppColor.gray1)
                                .font(AppFont.mediumSF(size: 15))
                        }
                        
                        SecureField("", text: $userPassword)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .font(.system(size: 25, weight: .bold))
                            .foregroundStyle(AppColor.gray1)
                    }
                    
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.darkBackground2)
                    .padding(.horizontal, 50)
                
                ///Sign in, forgot password and Create account button
                VStack(alignment: .center, spacing: 20) {
                    Button {
                        signInUser()
                    } label: {
                        Text("Sign In")
                    }
                    .buttonStyle(LongButtonStyle(backgroundColor: AppColor.accentGreen, foregroundColor: AppColor.white, length: 315))
                    
                    Button("Forgot password?", action: {
                        //yet to deside
                    })
                    .font(AppFont.mediumSF(size: 20))
                    .foregroundStyle(AppColor.gray1)
                    .padding(.bottom)
                    
                    //goto Sign Up Screen
                    Button {
                        path.append("SignUp1")
                    } label: {
                        Text("Create an account")
                    }
                    .buttonStyle(LongButtonStyle(backgroundColor: AppColor.darkGreen, foregroundColor: AppColor.white, length: 315))
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom)
                
                Spacer()
                
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AppColor.darkBackground1)
            .navigationDestination(for: String.self) { value in
                switch value {
                case "SignUp1":
                    SignUpScreenOne(path: $path, userEmail: $signUpEmail)
                case "SignUp2":
                    SignUpScreenTwo(path: $path, userEmail: $signUpEmail)
                case "SignUp3":
                    SignUpScreenThree(path: $path)
                case "HomeScreen":
                    HomeScreenView(path: $path)
                default:
                    EmptyView()
                }
            }
            
        }
    }
    
    // MARK: - Firebase Auth Sign-In Method
    private func signInUser() {
        guard !userEmail.isEmpty, !userPassword.isEmpty else {
            print("Please enter email and password")
            return
        }
        
        Auth.auth().signIn(withEmail: userEmail, password: userPassword) { result, error in
            if let error = error {
                print("Verification Failed \(error.localizedDescription)")
                return
            }else{
                print("Verification Succussful")
                path.append("HomeScreen")
            }
        }
    }
    
}

#Preview {
    SignInScreen()
}
