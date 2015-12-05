//
//  YearCalculator.swift
//  MoreClases
//
//  Created by Charles Caruana on 30/11/2015.
//  Copyright © 2015 chumio.inc. All rights reserved.
//

import UIKit

class YearCalculator: NSObject {
    
    var age : Int = 5
    var year : String = "1900"
    
    
    func calc ()
        
    {
        let yob : Int = (2016 - age)
        let yr = ("\(yob)")
        
        print("You were born in \(yob)")
        
        print(yr)

        
        
        
      
        
    }
    
  
    

}
