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
 

    
    var myJobsDictionary : Dictionary<String, Array<Job>>?
    
    var myProject = ["charlie"]
    
    @IBOutlet weak var tableView:UITableView?
      override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func   viewDidAppear(animated: Bool) {
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        
       
//        
//        if myJobsDictionary?.keys.count == nil {
//            return 1
//        }
//        else
//        {
        return myJobsDictionary!.keys.count
//        }
    }
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
                
        var myKeys = Array(myJobsDictionary!.keys)
        let sectionName = myKeys[section]
        return sectionName
    }
    
    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        return myArray.count
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        var myKeys = Array(myJobsDictionary!.keys)
        var keyName = myKeys[section]
        var jobsArray = myJobsDictionary![keyName]
        return (jobsArray?.count)!
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
       
        var myKeys = Array(myJobsDictionary!.keys)
        var keyName = myKeys[indexPath.section]
        
        var jobsArray = myJobsDictionary![keyName]
      
        var job = jobsArray![indexPath.row] as? Job
        let meter2 = String(job!.getm2())
        var cJob = (job?.currentJob)
        let smallFont = UIFont(name: "Arial", size: 30.0)!
        
        cell.detailTextLabel?.text =  " " + (cJob)! + " Start " + String(job!.jobDate) + " Finish " + String(job!.jobFinishTime) + " " +
        String(job!.time2m2())
        
        cell.textLabel!.text = (job?.project)! + " " + (job?.materialCombined())!

        
       // cell.textLabel!.text = ((job?.project)! + "f")
        
        
       
//        let sectionDay = MyDayArray[indexPath.section]
//        print(sectionDay)
//        if job?.jobDay == sectionDay {
//            let job = myArray[indexPath.row] as? Job
//            let meter2 = String(job!.getm2())
//            var cJob = (job?.currentJob)            cell.textLabel?.text = (job?.materialCombined())! + " " + meter2 + " " + (job?.jobDay)!
//            cell.detailTextLabel?.text = (job?.project)! + " " + (cJob)! + " Start " + String(job!.jobDate) + " Finish " + String(job!.jobFinishTime) + " " +
//                String(job!.time2m2())
//        }
//        
//        
//    
//        print(cell.detailTextLabel?.text)
     
        return cell
    }
    

   
    
    
    
    
    
    
    
    
    
    
    

}
