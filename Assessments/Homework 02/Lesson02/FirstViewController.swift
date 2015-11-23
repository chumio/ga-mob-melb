//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
   
    @IBOutlet var Name: UITextField!
    
    @IBOutlet var Age: UITextField!
    @IBOutlet var PlaceHolder: UILabel!
    @IBAction func Buton(sender: AnyObject) {
        PlaceHolder.text = "Hello World"
    }
    @IBAction func printNameAndAge(sender: AnyObject) {
        print("Hello \(Name.text!), you are \(Age.text!) years old")
    }
    
    @IBAction func canYouDrink(sender: AnyObject) {
        let abc : Int? = Int(Age.text!)
        if abc >= 21 {
            print("you can drink")
        }
        else if abc >= 18{
            print("You can vote")
        }
        else if abc >= 16{
            print("you can drive")
        }
    }
    
    @IBAction func canYouReallyDrink(sender: AnyObject) {
        let abc : Int? = Int(Age.text!)
        if abc >= 16 && abc < 17 {
            print("you can drive")
        }
        else if abc >= 18 && abc <= 20 {
            print("You can drive and vote")
        }
        else if abc > 20{
            print("\(Name.text!) my friend, you can Vote Drink and drive but not at the same time!")
        }
    }
    
    
    /*
    
    {
    PlaceHolder.text = "Hello \(Name.text!)"
    }

    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
}
