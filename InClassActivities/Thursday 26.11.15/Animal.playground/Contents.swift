//: Playground - noun: a place where people can play

import UIKit




class Animal {
    
    init(){
        print("Animal init")
    }
    
    func sleep() {
        print("Animal sleeping")
    }
    
    func eat() {
        print("Animal eating")
    }
    
    func walk(){
        print("Animal Walking")
    
    }
    
}

class Lion: Animal {
    
    override init(){
        print("Lion INIT")
    }
    
    override func walk(){
        print("Lion Walking")
    }
    
    func roar(){
        
        print("Lion Roar")
    }
    
    
}
// this is an instance of lion
var lion = Lion()

class Dog : Animal {
    
    func bark(){
        print("Dog barking")
    }
    
    
}

var dog = Dog()

lion.walk()


