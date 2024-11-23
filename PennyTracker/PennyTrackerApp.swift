//
//  PennyTrackerApp.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 10.09.2024.
//

import SwiftUI

@main
struct PennyTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
