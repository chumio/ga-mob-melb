//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Charles Caruana on 4/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import UIKit

var toDoList = [String]()



class FirstViewController: UIViewController, UITableViewDelegate {
    
    
    
    
    
    @IBOutlet weak var toDoListTable: UITableView!
    

    override func viewDidLoad() {
        
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            
        toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        super.viewDidLoad()
            
            
        // Do any additional setup after loading the view, typically from a nib.
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return toDoList.count
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if editingStyle == UITableViewCellEditingStyle.Delete {
            toDoList.removeAtIndex(indexPath.row)
            
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            
            toDoListTable.reloadData()
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
       cell.textLabel?.text = toDoList[indexPath.row]
        return cell
        
        
    }
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
        
    }

}

