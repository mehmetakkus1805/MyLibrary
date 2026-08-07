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
    
    var context : NSManagedObjectContext{
        persistentContainer.viewContext
    }
    
    func savecontext(){
        if context.hasChanges{
            do{
                try context.save()
            }catch{
                print("Save Error: \(error.localizedDescription)")
            }
        }
    }
    
    func addBookk(title:String , author : String){
        
        let book = Book(context:context)
        
        book.id = UUID()
        book.author = author
        book.title = title
        book.createdAt = Date()
        
        savecontext()
        
    }
    
}
