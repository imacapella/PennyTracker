//
//  ContentView.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 10.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showLogin = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !showLogin {
                SplashScreen(showLogin: $showLogin, namespace: namespace)
                    .transition(.asymmetric(
                        insertion: .identity,
                        removal: .move(edge: .top)
                    ))
            }
            
            if showLogin {
                LoginPage(namespace: namespace)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .identity
                    ))
            }
        }
        .ignoresSafeArea()
    }
}


#Preview {
    ContentView()
}
