//
//  LoginPage.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 11.11.2024.
//

import SwiftUI

struct LoginPage: View {
    var namespace: Namespace.ID
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    var body: some View {
        GeometryReader{ geo in
            DotBackground()
            VStack() {
                
                //MARK: Title Wave
                ZStack{
                    Wave(waveHeight: 15, phase: Angle(degrees: (Double(geo.frame(in: .global).minY) + 10) * -3 * 0.7))
                        .frame(width: geo.size.width, height: geo.size.height * 0.30)
                        .rotationEffect(.degrees(180))
                        .foregroundColor(Color(.pennyRed))
                        .shadow(radius: 15)
                    PennyTrackerLogo(scaleFactor: 0.7)
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .padding(.top, 40)
                        .shadow(radius: 6)
                }
                
                VStack(spacing: 20){
                    UsernameTextField(username: username)
                    PasswordTextField(password: password, showPassword: showPassword)
                }.padding(.top, 80)
                
                //MARK: Log In Button
                VStack(spacing: 15) {
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
                    //MARK:  Forgot Password
                    Button(action: {}) {
                        Text("Forgot Password?")
                            .foregroundColor(.pennyRed)
                            .bold()
                            .padding(.horizontal, 4)
                            .background(Color.pennyCream)
                            .cornerRadius(6)
                    }
                    
                    
                    
                    Spacer()
                    
                    //MARK: Sign Up Button
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
        }.ignoresSafeArea()
    }
}

    struct LoginPage_Previews: PreviewProvider {
        @Namespace static var namespace
        
        static var previews: some View {
            LoginPage(namespace: namespace)
        }
    }
    
    
    

