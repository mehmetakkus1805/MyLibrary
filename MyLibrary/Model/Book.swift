//
//  Book.swift
//  MyLibrary
//
//  Created by Forge Reset on 7.08.2026.
//

import CoreData

final class Book : NSManagedObject {
    @NSManaged var title: String
    @NSManaged var createdAt: Date
    @NSManaged var author: String
    @NSManaged var id :UUID
}
