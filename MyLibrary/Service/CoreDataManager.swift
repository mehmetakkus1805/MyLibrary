//
//  CoreDataManager.swift
//  MyLibrary
//
//  Created by Forge Reset on 3.08.2026.
//

import CoreData

final class CoreDataManager{
    
    static let shared = CoreDataManager()
    
    private init() { }
    
    lazy var persistentContainer: NSPersistentContainer = {          //Property
        let container = NSPersistentContainer(name: "MyLibrary")     //Object
        container.loadPersistentStores { _, error in
            if let error = error {
            fatalError("Core Data could not be loaded: \(error)")
            }
        }
        return container
    }()
    
}
