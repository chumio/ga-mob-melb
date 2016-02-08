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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "start2finish" {
             let secondVC: jobsCompletedVC = segue.destinationViewController as! jobsCompletedVC
            secondVC.myArray = myCompletedJobs
        }
        else
        {
          let intVC: InterruptViewController = segue.destinationViewController as! InterruptViewController
            
            intVC.recDate = machineHaltedTime
        }
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
   
    
   // JOB STARTED
    @IBAction func StartJob(sender: AnyObject) {
        
       let timtime = NSDate()
        
        let dateTimeOnly = NSDateFormatter()
        dateTimeOnly.dateFormat = "h:mm:ss a"
        
        let dateDayOnly = NSDateFormatter()
        dateDayOnly.dateFormat = "EEEE"
        
        
        let strTime = NSDateFormatter()
        strTime.dateFormat = "h:mm:ss a"
        
        jobStartTime = strTime.stringFromDate(timtime)
        print("JOB START TIME \(jobStartTime)")
        
        
       

        startDay = String(dateDayOnly)
        
        let dateString = dateTimeOnly.stringFromDate(timtime)
        let dayString = dateDayOnly.stringFromDate(timtime)

        mydateStart = String(dateString)
        startDay = String(dayString)
       
        
        currentMaterialGettingWorked.text =
            ("\(picColour) \(length) x \(width) x \(thick)")
        
        pickerSize.hidden = true
        currentProject.text = project
        currentMaterialGettingWorked.hidden = false
        pickerColourProject.hidden = true
        currentProject.hidden = false
        countingLabel.hidden = false
        countingLabel.text = String(counter)
        startTimer = NSTimer.scheduledTimerWithTimeInterval(0.003, target:self, selector: Selector("updateCounter"), userInfo: nil, repeats: true)
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
        
        
        
        var completedJob = Job()
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
        print("JOB STARTED TIME AT \(completedJob.jobFinishTime)")
        
        

        
        myCompletedJobs.append(completedJob)

        print(myCompletedJobs)
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

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

