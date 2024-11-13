//
//  PennyTrackerLogo.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 12.11.2024.
//
import SwiftUI

struct PennyTrackerLogo : View{
    var scaleFactor: Double
    var body: some View{
        VStack(alignment: .center) {
            Image("pennyLogo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: UIScreen.main.bounds.width * scaleFactor)
                .shadow(radius: 10)
        }
    }
}

#Preview {
    PennyTrackerLogo(scaleFactor: 1)
}
