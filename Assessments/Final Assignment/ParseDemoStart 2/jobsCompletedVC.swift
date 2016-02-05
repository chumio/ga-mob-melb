//
//  jobsCompletedVC.swift
//  ParseDemo
//
//  Created by Charles Caruana on 3/02/2016.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import Parse
import UIKit

class jobsCompletedVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myArray = []
    var myProject = ["charlie"]
    
    @IBOutlet weak var tableView:UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func   viewDidAppear(animated: Bool) {
       
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myArray.count
        
    }
    
    
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
       
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        var job = myArray[indexPath.row] as? Job
        var meter2 = String(job!.getm2())
        var cJob = (job?.currentJob)
       
        
        cell.textLabel?.text = (job?.materialCombined())! + " " + meter2 + String(job?.jobDate)
        cell.detailTextLabel?.text = (job?.project)! + " " + (cJob)!
        
        
        print(cell.detailTextLabel?.text)
        
        
    return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }// Default is 1 if not implemented
    
    
   
    
    
    
    
    
    
    
    
    
    
    

}
