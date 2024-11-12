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
    var body: some View {
        GeometryReader{ geo in
            DotBackground()
            VStack {
                ZStack{
                    Wave(waveHeight: 15, phase: Angle(degrees: (Double(geo.frame(in: .global).minY) + 10) * -3 * 0.7))
                        .frame(width: geo.size.width, height: geo.size.height * 0.30)
                        .rotationEffect(.degrees(180))
                        .foregroundColor(Color(.pennyRed))
                        .shadow(radius: 10)
                    Image("pennyLogo")
                        .resizable()
                        .scaledToFit()
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: geo.size.width * 0.8)
                        .padding(.top, 40)
                        .shadow(radius: 10)
                }
                
                TextField("Username", text: $username)
                    .padding()
                    .frame(maxWidth: geo.size.width, maxHeight: 70)
                    .tint(.red)
                    .textFieldStyle(.roundedBorder)
                    
                
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

