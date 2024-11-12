//
//  PennyTrackerLogo.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 12.11.2024.
//
import SwiftUI

struct PennyTrackerLogo : View{
    var widthMultiplier : Double
    var body: some View{
        GeometryReader{ geo in
            VStack(alignment: .center) {
                Image("pennyLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: geo.size.width * widthMultiplier)
                    .shadow(radius: 10)
            }
        }
    }
}

#Preview {
    PennyTrackerLogo(widthMultiplier: 1)
}
