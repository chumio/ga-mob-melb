//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit


// Always predifine the array before the class controller 

var myarray2 = ["charlie", "Theresa", "Joanne", "Adrian"]

class MapViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate {
    

    
// Number of section in the table view. eg an a phone book you would have 26 section (the number of letters in the alphabet)

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 4
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell2");cell!.textLabel!.text = myarray2[indexPath.row]
        return cell!
    }



    
    
    @IBOutlet weak var textFieldOne: UITextField!
    
    @IBOutlet weak var textFieldTwo: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == textFieldOne
        {
            textFieldTwo.becomeFirstResponder()
        }
        else
        {
            textFieldTwo.resignFirstResponder()
        }
        
        return true
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. 
                Accept keyboard input from the two text views. 
                When the 'return' button is pressed on the SECOND text view, 
                add the text view data to a dictionary. 
                The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        
        
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }
}


