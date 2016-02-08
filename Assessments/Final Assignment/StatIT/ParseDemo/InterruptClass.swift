//
//  InterruptClass.swift
//  StatIT
//
//  Created by Charles Caruana on 8/02/2016.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import Foundation


class Interrupt:  NSObject
{
    var intDate = "" // full start date
    var intDay = "" // holds the current job's Day Of The Week
    var intStartTime = "" // holds the current Start of the interruption
    var intFinishTime = "" // holds the current completion  as time only
    var machineName = ""
    var intelapsedTime:Double = 0.0
    var intdayOfTheWeek = ""
    var intProblem = "" // select the problem that halted the machine
    var intErrorCodes = "" // enter any error codes that the machine has displayed
    var intSolved = "" // select how the machine was fixed
    var intComment = "" // any comment regarding the problem
    var intTecRequired = "" // yes or no
    var intTecName = "" // the tech's name
    
}
