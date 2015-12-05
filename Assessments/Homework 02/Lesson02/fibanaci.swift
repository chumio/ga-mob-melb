//
//  fibanaci.swift
//  Lesson02
//
//  Created by Charles Caruana on 28/11/2015.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import UIKit

class Fibanaci: NSObject
{
    var var1 :      Int = -1
    var var2 :      Int = 1
    var counter :   Int = 1
    
    
    func fib ()
    {
        
        for var loop : Int = 1;loop <= counter ; ++loop
        {
            var1 = var1 + var2
            
            

            
            
            ++loop // add another 1 to the loop before calculating the variable var2
            
            var2 = var1 + var2
            
        }
        print("At position \(counter) the fibanacci number is  \(var2)")
    }
}


