//
//  jobsCompletedVC.swift
//  ParseDemo
//
//  Created by Charles Caruana on 3/02/2016.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import Parse
import UIKit
import Foundation


class jobsCompletedVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let collation = UILocalizedIndexedCollation.currentCollation()
        as UILocalizedIndexedCollation
   
    
    
    //*********
    var myDict:[String:String] = ["Sunday":"", "Monday":"", "Tuesday":""]
    let MyDayArray = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    var myArray = []
    var myProject = ["charlie"]
    
    @IBOutlet weak var tableView:UITableView?
      override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func   viewDidAppear(animated: Bool) {
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
       
        return 7
    }
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        return MyDayArray   [section]
    }
    
    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        return myArray.count
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return myArray.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let job = myArray[indexPath.row] as? Job
        let meter2 = String(job!.getm2())
        var cJob = (job?.currentJob)
        
        
       
        let sectionDay = MyDayArray[indexPath.row]
        print(sectionDay)
        if job?.jobDay == sectionDay {
            
            cell.textLabel?.text = (job?.materialCombined())! + " " + meter2 + " " + (job?.jobDay)!
            cell.detailTextLabel?.text = (job?.project)! + " " + (cJob)! + " Start " + String(job!.jobDate) + " Finish " + String(job!.jobFinishTime) + " " +
                String(job!.time2m2())
        }
        
        
    
        print(cell.detailTextLabel?.text)
     
    return cell
        }
    

   
    
    
    
    
    
    
    
    
    
    
    

}
