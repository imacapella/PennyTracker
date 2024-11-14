//
//  Splash.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 11.11.2024.
//

import SwiftUI

struct SplashScreen: View {
    var namespace: Namespace.ID
    @Binding var showLogin: Bool
    @State private var animate: Bool = false

    var body: some View {
        ZStack {
            Color.pennyRed
            DotScreenBackground()

            VStack {
                Spacer()
                PennyTrackerLogo(scaleFactor: 1)
                    .scaleEffect(animate ? 1 : 0)
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .animation(.easeInOut, value: 1)
                    .onAppear {
                        animate = true
                        if Thread.isMainThread{
                          DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                showLogin = true
                            }
                        }
                    }
                TextDescription()
                Spacer()
                TextAppRights()
            }
        }
        .edgesIgnoringSafeArea(.all)
        .animation(.easeInOut(duration: 0.7), value: animate)
    }
}


struct SplashScreen_Previews: PreviewProvider {
    @Namespace static var namespace
    @State static var showLogin = false

    static var previews: some View {
        SplashScreen(namespace: namespace, showLogin: $showLogin)
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
