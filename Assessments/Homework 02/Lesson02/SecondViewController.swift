//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var Number: UITextField!
    
    @IBOutlet var value: UILabel!
    
    @IBAction func addTheNumbers(sender: AnyObject) {
        let abc : Int? = Int(Number.text!)
        let def : Int? = Int(value.text!)
        let ans : Int = abc! + def!
       value.text = ("\(ans)")
        print("TESTING PRINT")
        
        
    }
}
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.

