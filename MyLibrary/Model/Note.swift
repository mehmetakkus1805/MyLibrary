//
//  Note.swift
//  MyLibrary
//
//  Created by Forge Reset on 7.08.2026.
//

import CoreData

final class Note : NSManagedObject {
    @NSManaged var text: String
    @NSManaged var createdAt: Date
    @NSManaged var pageNumber: Int32
    @NSManaged var id :UUID
}

