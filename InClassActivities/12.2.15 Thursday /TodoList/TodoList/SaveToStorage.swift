//
//  SaveToStorage.swift
//  TodoList
//
//  Created by Charles Caruana on 12/12/2015.
//  Copyright © 2015 chumio.inc. All rights reserved.
//

import Foundation


class saveToStorage {
    func save() {
        NSUserDefaults.standardUserDefaults().setObject(objects, forKey: kNotes) /// saves data to persistant storage once the user logs out of the app
        NSUserDefaults.standardUserDefaults().synchronize() // save data to system storage immediatley
    }
    func load(){
        if let loadedData = NSUserDefaults.standardUserDefaults().arrayForKey(kNotes) as? [String] {
            objects = loadedData
        }
}
}