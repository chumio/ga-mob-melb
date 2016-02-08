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
    var jobDate = "" // full start date
    var jobDay = "" // holds the current job's Day Of The Week
    var jobStartTime = "" // holds the current Stat job as Time
    var jobFinishTime = "" // holds the current job finish as time only
    var currentJob = ""
    var project = ""
    var colour = ""
    var sheetLength:Int? = nil
    var sheetWidth:Int? = nil
    var sheetThick:Int? = nil
    var elapsedTime:Double = 0.0
    var dayOfTheWeek = ""
    // combine length width thick and colour
    
    func materialCombined () -> String {
        let sheetLengthString = String(sheetLength!)
        let sheetWidthString = String(sheetWidth!)
        let sheetThickString = String(sheetThick!)
        let result = (colour + " " + sheetLengthString + " x " + sheetWidthString + " " + sheetThickString + "mm")
         print(result)
        return String(result)
       
    }
    
    // get meter2 measure
    
    func getm2 ()-> Double {
        
        let sheetLengthDble = Double(sheetLength!)
        let sheetWidthDble = Double(sheetWidth!)
        let result = (sheetLengthDble/1000) * (sheetWidthDble/1000)
          print (result)
        return result
        
        
    }
    
    // get the time it has taken to machine per m2
    
    func time2m2 ()-> double_t {
        print(jobStartTime)
       let calc = getm2()
       let result =  (elapsedTime / calc)/60
       let newRESULT = NSString(format: "%.2f", result).doubleValue
    return (newRESULT)
    }
  
}
