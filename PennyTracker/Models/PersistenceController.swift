//
//  PersistenceController.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 23.11.2024.
//

//  PersistenceController.swift

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "PennyTracker") // .xcdatamodeld dosyanızın adı
        
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data store failed to load with error: \(error)")
            }
        }
        
        // Merge Policy ayarı - opsiyonel
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
