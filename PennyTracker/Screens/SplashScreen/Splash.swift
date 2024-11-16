//
//  Splash.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 11.11.2024.
//

import SwiftUI

struct SplashScreen: View {
    @Binding var showLogin: Bool
    @State private var animate: Bool = false
    var namespace : Namespace.ID
    
    var body: some View {
        ZStack {
            Color.pennyRed
            
            VStack {
                Spacer()
                PennyTrackerLogo(scaleFactor: 1)
                    .scaleEffect(animate ? 1 : 0)
                    .animation(.spring(response: 0.6, dampingFraction: 0.7), value: animate)
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .onAppear {
                        animate = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showLogin = true
                            }
                        }
                    }
                TextDescription()
                Spacer()
                TextAppRights()
                
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}


struct TextDescription :  View {
    var body: some View {
        Text("Where Every Penny Counts")
            .font(.title3)
            .foregroundColor(.white)
            .padding(.top, 10)
    }
}


struct TextAppRights : View {
    var body: some View{
        Text("All Rights Reserved")
            .font(.caption)
            .foregroundColor(.white.opacity(1))
            .padding(.bottom, 20)
    }
}
