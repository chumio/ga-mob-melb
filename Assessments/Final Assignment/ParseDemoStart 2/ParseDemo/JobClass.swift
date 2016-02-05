//
//  JobClass.swift
//  ParseDemo
//
//  Created by Charles Caruana on 4/02/2016.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import Foundation
import Parse


class Job:  NSObject
{
    var jobDate = ""
    var currentJob = ""
    var project = ""
    
    var colour = ""
    var sheetLength:Int? = nil
    var sheetWidth:Int? = nil
    var sheetThick:Int? = nil

    
    
 
    
    func materialCombined () -> String {
        let sheetLengthString = String(sheetLength!)
        let sheetWidthString = String(sheetWidth!)
        let sheetThickString = String(sheetThick!)
        
        let result = (colour + " " + sheetLengthString + " x " + sheetWidthString + String(jobDate))
         print(result)
        return String(result)
       
    }
    
    func getm2 ()-> Double {
        
        let sheetLengthDble = Double(sheetLength!)
        let sheetWidthDble = Double(sheetWidth!)
        let result = (sheetLengthDble/1000) * (sheetWidthDble/1000)
          print (result)
       
        return result
        
        
    }
    
    func timeOnly () -> String {
        let strDate:String = jobDate
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "'T'HH:mm:ssZ"
        dateFormatter.dateFromString(strDate)
  print ( dateFormatter.dateFromString( strDate ) )
        return strDate
        
       
  
    }
    

}
