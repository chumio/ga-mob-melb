//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{
    @IBOutlet weak var Ans: UILabel!
    
    @IBOutlet weak var Number: UITextField!

    @IBAction func calculate(sender: AnyObject)
    {
        let abc : Int? = Int(Number.text!)
        if abc! % 2 == 0 {
            print("\(Number.text!) is EVEN")
              
        }
        else
        {
            print("\(Number.text!) is ODD")
          
        }
    
    }
  }
   
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/

