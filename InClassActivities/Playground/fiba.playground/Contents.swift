//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

        var var1 :      Int = -1
        var var2 :      Int = 1
        var counter :   Int = 5
        
        
        func fib ()
        {
            
            for var loop : Int = 1;loop <= counter ; ++loop
            {
                var1 = var1 + var2
                
                ++loop
                
                var2 = var1 + var2
                
                print("\(var2)")
                
                
            }
            print("At position \(counter) the fibanacci number is  \(var2)")
        }
