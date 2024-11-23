//
//  ExpenseTracking+CoreDataProperties.swift
//  PennyTracker
//
//  Created by Gürkan Karadaş on 23.11.2024.
//
//

import Foundation
import CoreData


extension ExpenseEntity {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<ExpenseEntity> {
        return NSFetchRequest<ExpenseEntity>(entityName: "ExpenseEntity")
    }

    @NSManaged public var category: String?
    @NSManaged public var amount: NSDecimalNumber?
    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
}

extension ExpenseEntity: Identifiable {
}
