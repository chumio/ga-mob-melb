//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit



// Always predifine the array before the class controller 

var myDict = [String: String]()





class MapViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate {
    
  
  
    

    
    @IBOutlet weak var DictTable: UITableView!
    

    
// Number of section in the table view. eg an a phone book you would have 26 section (the number of letters in the alphabet)

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myDict.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let myDictTitle = [String](myDict.keys)
        let myDictSub = [String](myDict.values)
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell2");cell!.textLabel!.text = myDictTitle[indexPath.row]
        _ = tableView.dequeueReusableCellWithIdentifier("cell2");cell!.detailTextLabel!.text = myDictSub[indexPath.row]
    
      
      
        return cell!
       
        
    }




    
    
    @IBOutlet weak var textFieldOne: UITextField!
    
    
    @IBOutlet weak var textFieldTwo: UITextField!
  
    func textFieldDidBeginEditing(textFieldOne: UITextField) {
        textFieldOne.backgroundColor=UIColor.blueColor()
        textFieldTwo.backgroundColor=UIColor.blueColor()
        textFieldOne.textColor=UIColor.whiteColor()
        textFieldTwo.textColor=UIColor.whiteColor()
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == textFieldOne
        {
        
            textFieldTwo.becomeFirstResponder()
        }
        else
        {
            textFieldTwo.resignFirstResponder()
            myDict[textFieldOne.text!] = textFieldTwo.text
            
                print(myDict)
            textFieldOne.text = ""
            textFieldTwo.text = ""
            textFieldOne.backgroundColor=UIColor.whiteColor()
            textFieldTwo.backgroundColor=UIColor.whiteColor()
        }
        
        
        self.DictTable.reloadData()
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


