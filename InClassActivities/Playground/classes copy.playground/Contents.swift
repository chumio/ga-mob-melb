//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class ToDo {
    
    var taksName : String?
    var requiredBy : NSDate?
    var priority : Int?
    var isDone : Bool?
    
    
    init(taskName: String)
    {
        self.taksName
        
    }
    
    func changeStatus(isDone: Bool){
        
        self.isDone = isDone
        print("Current Status: \(self.isDone!)")
        

    }
    
}

var task1 = ToDo(taskName: "do dishes")
let taskName1 = task1.taksName
task1.changeStatus(true)

var task2 = ToDo(taskName: "Take out the trash")
task2.changeStatus(false)


