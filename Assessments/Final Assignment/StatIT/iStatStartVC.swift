//
//  iStatStartVC.swift
//  ParseDemo
//
//  Created by Charles Caruana on 2/02/2016.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import Parse
import UIKit



struct TableItem {
    let title: String
    let creationDate: NSDate
}

var sections = Dictionary<String, Array<TableItem>>()
var sortedSections = [String]()
var machineHaltedTime = ""

class iStatStartVCController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        
        if segue.identifier == "start2finish"
        {
             let secondVC: jobsCompletedVC = segue.destinationViewController as! jobsCompletedVC
            let myJobsDict = getMyJobsDictionary(myCompletedJobs)
            secondVC.myJobsDictionary = myJobsDict
        }
        else if segue.identifier == "jobsCompleted"
            
        {
            let secondVC: jobsCompletedVC = segue.destinationViewController as! jobsCompletedVC
            let myJobsDict = getMyJobsDictionary(myCompletedJobs)
            secondVC.myJobsDictionary = myJobsDict
                     
        }
        
        else
        {
            let intVC: InterruptViewController = segue.destinationViewController as! InterruptViewController
            intVC.recDate = machineHaltedTime
        }
        
    }
    
    
    
    func getMyJobsDictionary(jobsArray: Array<Job>) -> Dictionary<String, Array<Job>>? {
        
       var myJobDic = [String: [Job]]()
        
        for job in jobsArray
        {
           // check what jobday is
      //-      job.jobDate
            
          let sectionKey = job.dateKeyString
         
            
          // check for key in my existing dictionary
            
            if myJobDic[sectionKey] != nil {
                // if the key exist in dic then append the job to the array value of that key
                myJobDic[sectionKey]?.append(job)
                
                
            } else {
                // if key is does not exisit then add a new key with the value pair in the dictionary
                myJobDic[sectionKey]=[job]

            }
            
        }
        return myJobDic
        
//        let job1 = Job()
//        let job2 = Job()
//        let job3 = Job()
//        let job4 = Job()
//        job1.project = "Array Apt"
//        job2.project = "Classy apt"
//        job3.project = "Bank Street"
//        job4.project = "Coles Apt"
//        
        
        /// create dict from array here
        
    

        
        
        
//        
//        
//        let myDict = ["Monday": [job1,job2,job3, job4],"Tuesday": [job3,job4]]
//        
//    
//        return myDict
    
    }
    
    ///   MACHINE HALTED
    
    
    @IBAction func interupt(sender: AnyObject) {
        
       var machineHalted = Interrupt()
        let haltDate = (NSDate())
        
        let timeOnly = NSDateFormatter()
        timeOnly.dateFormat = "h:mm:ss a"
        let dateString = timeOnly.stringFromDate(haltDate)
        
        machineHalted.intDate = dateString
        machineHaltedTime = dateString
        print(dateString)

        performSegueWithIdentifier("interrupt", sender: sender)
        
        
    }
    @IBOutlet weak var startCircle: UIImageView!
    @IBOutlet weak var SizeOutlet: UITextField!
    @IBOutlet weak var ProjectOutlet: UITextField!
    @IBOutlet weak var pickerSize: UIPickerView!
    @IBOutlet weak var countingLabel: UITextField!
    @IBOutlet weak var tempRowOutPut: UITextField!
    @IBOutlet weak var pickerColourProject: UIPickerView!
    @IBOutlet weak var currentProject: UITextField!
    @IBOutlet weak var currentMaterialGettingWorked: UITextField!
    @IBOutlet weak var tempOutPut: UITextField!
    @IBOutlet weak var newPicker: UIPickerView!
    
    
    var startTimer = NSTimer()
    var counter = 0
    var mydateStart = ""
    var startDay = ""
    var currentMaterial:String = ""
    var length:Int = 0
    var width:Int = 0
    var thick:Int = 0
    var picColour:String = ""
    var project:String = ""
    var picker = UIPickerView()
    var jobStartTime = ""
    var dateKeyString = ""
   
    
   // JOB STARTED
    @IBAction func StartJob(sender: AnyObject) {
        
       let timtime = NSDate()
        
        
        let dateTimeOnly = NSDateFormatter()
        dateTimeOnly.dateFormat = "h:mm:ss a"
        
        let dateDayOnly = NSDateFormatter()
        dateDayOnly.dateFormat = "EEEE"
        
        
        let strTime = NSDateFormatter()
        strTime.dateFormat = "h:mm:ss a"
        
        let sectionDateKey = NSDateFormatter()
        sectionDateKey.dateFormat = "yyyyMMdd"
        
        var sectionDateKeyString = sectionDateKey.stringFromDate(timtime)
        
        dateKeyString = sectionDateKeyString
        print(sectionDateKeyString)
        
        
        jobStartTime = strTime.stringFromDate(timtime)
        print("JOB START TIME \(jobStartTime)")
        
        
       

        startDay = String(dateDayOnly)
        
        let dateString = dateTimeOnly.stringFromDate(timtime)
        let dayString = dateDayOnly.stringFromDate(timtime)
        print(dateString)
        print(dayString)

        mydateStart = String(dateString)
        startDay = String(dayString)
       
        
        currentMaterialGettingWorked.text =
            ("\(picColour) \(length) x \(width) x \(thick)")
        startCircle.hidden = false
        pickerSize.hidden = true
        currentProject.text = project
        currentMaterialGettingWorked.hidden = false
        pickerColourProject.hidden = true
        currentProject.hidden = false
        countingLabel.hidden = false
        countingLabel.text = String(counter)
        startTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target:self, selector: Selector("updateCounter"), userInfo: nil, repeats: true)
        print(startTimer)
   
    }
    func updateCounter() {
        
        countingLabel.text = String(counter++)
    }
  
    
    /// JOB COMPLETE
    
  

    
 
    
    @IBAction func finishJob(sender: AnyObject)
    {
        let fintime = NSDate()
        
        let timeFin = NSDateFormatter()
        timeFin.dateFormat = "h:mm:ss a"
       
        
      pickerSize.hidden = false
        currentMaterialGettingWorked.hidden = true
        pickerColourProject.hidden = false
        currentProject.hidden = true
        startTimer.invalidate()
        countingLabel.hidden = true
        startCircle.hidden = true
        
        
        
        let completedJob = Job()
        let timtime = NSDate()
        
        completedJob.sheetLength = length
        completedJob.sheetWidth = width
        completedJob.sheetThick = thick
        completedJob.project = project
        completedJob.colour = picColour
        completedJob.materialCombined()
        completedJob.jobDate = mydateStart
        completedJob.jobDay = startDay
        completedJob.elapsedTime = Double(counter)
        completedJob.jobFinishTime = timeFin.stringFromDate(timtime)
        completedJob.jobStartTime = jobStartTime
        completedJob.dayOfTheWeek = startDay
        completedJob.dateKeyString = dateKeyString
        print("JOB STARTED TIME AT \(completedJob.jobFinishTime)")
        
        

        
        myCompletedJobs.append(completedJob)

        print("My Completed Job Arrar \(myCompletedJobs)")
        performSegueWithIdentifier("start2finish", sender: sender)
      
    }
    
    @IBOutlet weak var colour: UIPickerView!
    var myCompletedJobs:[Job]=[]
    var myMaterialsArray:[String]=[]
    var myTimeArray:[String]=[]
    let myLengthArray = [3600, 3000, 2400, 1200]
    let myWidthArray = [600, 900, 1200, 1800]
    let myThickArray = [9,12,18,25]
    let myColourArray = ["White", "Colour", "Raw", "Veneer"]
    let myProjectArray = ["Queens Street", "EQ Towers", "BayView", "Town Towers"]
    let myTestArray = [3600, 3000, 2400, 1200]
    

    
    // Picker Wheel
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        mydateStart = String(NSDate)
        print(picker.tag)
      //  tempRowOutPut.text = String(component)
    //    tempOutPut.text = String(pickerView.tag)
        // Size of board selector

        if pickerView.tag == 1
        {
            let myPick = component
            if myPick == 0
            {
            //    length = (myLengthArray[row])
                return String(myLengthArray[row])
            }
            else if myPick == 1
            {
                width = (myWidthArray[row])
                return String(myWidthArray[row])
            }
            else
            {
                thick = (myThickArray[row])
                return String(myThickArray[row])
            }
        }
            
       // Colour and Project
            
        else 
        {
            let myPick = component
            if myPick == 0
            {
                picColour = myColourArray[row]
                return String(myColourArray[row])
            }
            else
            {
                project = (myProjectArray[row])
                return String(myProjectArray[row])
            }
        }
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        if pickerView.tag == 1
        {
          return 3
        }
        else
        {
        return 2
        }
  
    }
    
    
    // returns the # of rows in each component..
   
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return 4
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        currentMaterial=(myProjectArray[row])
        project = (myProjectArray[row])
        print(myProjectArray[row])
        if pickerView.tag == 1
        {
            let myPick = component
            if myPick == 0
            {
                length = (myLengthArray[row])
             }
            else if myPick == 1
            {
                width = (myWidthArray[row])
            }
            else
            {
                thick = (myThickArray[row])
            }
        }
        else
        {
            let myPick = component
            if myPick == 0
            {
                picColour = myColourArray[row]
            }
            else
            {
                project = (myProjectArray[row])
            }
        }


    }

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        currentMaterialGettingWorked.hidden = true
        currentMaterialGettingWorked.text = String (picker)
        currentProject.hidden = true
        countingLabel.hidden = true
        startCircle.hidden = true

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

