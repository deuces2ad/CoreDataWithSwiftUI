//
//  PersistantContainer.swift
//  CoreDataWithSwiftUI
//
//  Created by abhishek dhiman on 30/06/22.
//

import Foundation
import CoreData

class PersistantStorage {
    
    //MARK: - Properties
    let TAG = "PersistantStorage"
    
    //MARK: - Load Persistent COntainer
    
    lazy var persistentContainer : NSPersistentContainer = {
        let pc = NSPersistentContainer(name: AppInfoConfig.appDataModel)
        pc.loadPersistentStores { discription, error in
            if let error = error {
                Log.echo(key: self.TAG, text: "failed to load Core Data,\(error.localizedDescription)")
            }else{
                Log.echo(key: self.TAG, text: "Core Data loaded successfully")
            }
        }
        return pc
    }()

    
}
