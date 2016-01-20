//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit


// Always predifine the array before the class controller 

var myarray = [String]()



class ArrayViewController: UIViewController, UITableViewDelegate, UITextFieldDelegate {
   @IBOutlet var tableView: UITableView?
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        newArrayItem.resignFirstResponder()
        if myarray.count < 0
            
        {myarray = [newArrayItem.text!]
           
        }
        else
        {myarray.append(newArrayItem.text!)
            
        }
       
        newArrayItem.text = ""
        print(myarray)
        self.tableView?.reloadData()
        
        
        
        
        return true

    }
    
    @IBOutlet weak var newArrayItem: UITextField!
    
   

    
// Number of section in the table view. eg an a phone book you would have 26 section (the number of letters in the alphabet)

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myarray.count
    }
   
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell");cell!.textLabel!.text = myarray[indexPath.row]
        
        
        return cell!
       
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
//        self.dismissViewControllerAnimated(false, completion: nil)
        self.dismissViewControllerAnimated(false, completion: { () -> Void in
            self.view.backgroundColor = UIColor.blueColor()
        })
        self.view.backgroundColor = UIColor.redColor()
       
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. 
            Accept keyboard input from the text view when the return key is pressed.
            Add the string that was entered into the text view into an array of strings (stored in this class).
        
        
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. 
            These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
    }
}

