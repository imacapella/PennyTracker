//
//  Splash.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 11.11.2024.
//

import SwiftUI

struct SplashScreen: View {
    var namespace : Namespace.ID
    @Binding var showLogin: Bool
    @State var isActive : Bool = false
    @State var animate : Bool = false
    
    // Customise your SplashScreen here
    var body: some View {
        ZStack {
                    LinearGradient(
                        gradient: Gradient(colors: [Color.pennyRed.opacity(0.9), Color.pennyRed.opacity(0.7)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Spacer()
                        Image("pennyLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .shadow(radius: 10)
                            .scaleEffect(animate ? 1 : 0)
                            .animation(.easeInOut(duration: 1))
                            .matchedGeometryEffect(id: "title", in: namespace)
                        
                        Text("Where Every Penny Counts")
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding(.top, 10)
                        
                        
                        
                        Spacer()
                        
                        Text("All Rights Reserved")
                            .font(.caption)
                            .foregroundColor(.white.opacity(0.7))
                            .padding(.bottom, 20)
                    }.onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 , execute: {
                            animate.toggle()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.8, execute: {
                                showLogin.toggle()
                            })
                        })
                    }
                }
    }
}
