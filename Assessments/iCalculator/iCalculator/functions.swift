//
//  functions.swift
//  iCalculator
//
//  Created by Charles Caruana on 15/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import Foundation


func calc() {
    

    lcdDisplay!.text! = "0"
    numberStack = []
    functionButtonSelected = "notSelected"
    operation.text = ""
    lastOpSelct.text = ""
    specialFunction = ""
    numberStackIndex = 0
    lcd:String = "0"
}