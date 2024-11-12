//
//  ContentView.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 10.09.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var showLogin = false
    @Namespace private var namespace
    
    // Customise your SplashScreen here
    var body: some View {
        ZStack{
            if showLogin{
                LoginPage(namespace: namespace)
            }else{
                SplashScreen(namespace: namespace, showLogin: $showLogin)
            }
        }.animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0.5), value: showLogin)
    }
}
 
#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
