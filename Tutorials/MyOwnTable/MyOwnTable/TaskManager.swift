//
//  TaskManager.swift
//  MyOwnTable
//
//  Created by Charles Caruana on 5/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task{
    var name = "Un_Named"
    var desc = "Un-Described"
    
}

class TaskManager: NSObject {

    var tasks = [task]()
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
