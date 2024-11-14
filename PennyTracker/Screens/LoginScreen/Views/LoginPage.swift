//
//  LoginPage.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 11.11.2024.
//

import SwiftUI

struct LoginPage: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var namespace: Namespace.ID
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    var body: some View {
        ZStack{
            DotBackground()
            VStack() {
                ZStack {
                        Wave(waveHeight: 15, phase: Angle(degrees: Double(-3 * (screenHeight / 15))))
                                .frame(width: screenWidth, height: screenHeight * 0.30)
                                .rotationEffect(.degrees(180))
                                .foregroundColor(Color(.pennyRed))
                                .shadow(radius: 15)
                                .overlay {
                                    PennyTrackerLogo(scaleFactor: 0.7)
                                        .padding(.top, 40)
                                        .shadow(radius: 6)
                                }
                        }
                VStack(spacing: 20){
                    UsernameTextField(username: username)
                    PasswordTextField(password: password, showPassword: showPassword)
                }.padding(.top, 80)
                VStack(spacing: 15) {
                    LoginButton()
                    ForgotPasswordButton()
                    Spacer()
                    SignUpButton()
                }
            }
        }.ignoresSafeArea()
    }
}

    struct LoginPage_Previews: PreviewProvider {
      @Namespace static var namespace
        
        static var previews: some View {
           LoginPage(namespace: namespace)
        }
    }
    
 




struct WaveLogo: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height

    var body: some View {
        ZStack {
            Wave(waveHeight: 15, phase: Angle(degrees: Double(-3 * (screenHeight / 15))))
                .frame(width: screenWidth, height: screenHeight * 0.30)
                .rotationEffect(.degrees(180))
                .foregroundColor(Color(.red))
                .shadow(radius: 15)
                .overlay {
                    PennyTrackerLogo(scaleFactor: 0.7)
                        .padding(.top, 40)
                        .shadow(radius: 6)
                }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginButton : View {
    var body: some View {
        Button(action: {}){
            Text("Log In")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.pennyRed)
                .cornerRadius(12)
                .tint(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.pennyCream, lineWidth: 4)
                )
        }.padding(.horizontal).padding(.top, 30)
    }
}

struct ForgotPasswordButton : View {
    var body: some View {
        Button(action: {}) {
            Text("Forgot Password?")
                .foregroundColor(.pennyRed)
                .bold()
                .padding(.horizontal, 4)
                .background(Color.pennyCream)
                .cornerRadius(6)
        }
    }
}


struct SignUpButton : View {
    var body: some View {
        VStack(spacing: 3) {
            Text("Don't have an account yet?")
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .padding(.horizontal, 4)
                .background(Color.pennyCream)
                .cornerRadius(6)
            
            Button(action: {}) {
                Text("Sign Up")
                    .foregroundColor(.pennyRed)
                    .bold()
                    .padding(.horizontal, 4)
                    .background(Color.pennyCream)
                    .cornerRadius(6)
            }
        }
        .padding(8)
        .cornerRadius(15)
        .padding(.bottom, 50)
    }
}
