//
//  iStatStartVC.swift
//  ParseDemo
//
//  Created by Charles Caruana on 2/02/2016.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import Parse
import UIKit



class iStatStartVCController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondVC: jobsCompletedVC = segue.destinationViewController as! jobsCompletedVC
        
        secondVC.myArray = myCompletedJobs
       
        
        
    }
    
    @IBOutlet weak var pickerSize: UIPickerView!
    @IBOutlet weak var countingLabel: UITextField!

    @IBOutlet weak var pickerColourProject: UIPickerView!
    
    @IBOutlet weak var currentProject: UITextField!
    @IBOutlet weak var currentMaterialGettingWorked: UITextField!
    
    var startTimer = NSTimer()
    var counter = 0
    var mydateStart = ""
    var currentMaterial:String = ""
    var length:Int = 0
    var width:Int = 0
    var thick:Int = 0
    var picColour:String = ""
    var project:String = ""
    var picker = UIPickerView()
   // var getTime = ""
    
    
    @IBAction func StartJob(sender: AnyObject) {
        mydateStart = String(NSDate)
        
        currentMaterialGettingWorked.text =
            ("\(picColour) \(length) x \(width) x \(thick)")
        
        pickerSize.hidden = true
        currentProject.text = project
        currentMaterialGettingWorked.hidden = false
        pickerColourProject.hidden = true
        currentProject.hidden = false
        countingLabel.hidden = false
        countingLabel.text = String(counter)
        startTimer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: Selector("updateCounter"), userInfo: nil, repeats: true)
        print(startTimer)
        let ttime = Job.timeOnly
        print(ttime)
        
        
   
    }
    func updateCounter() {
        
        countingLabel.text = String(counter++)
    }
  
    
    /// JOB COMPLETE
    
    @IBAction func finishJob(sender: AnyObject) {
        
      pickerSize.hidden = false
        currentMaterialGettingWorked.hidden = true
        pickerColourProject.hidden = false
        currentProject.hidden = true
        startTimer.invalidate()
        countingLabel.hidden = true
        
        
        
        var completedJob = Job()
        let timtime = NSDate()
        
        
 //       completedJob.currentJob = "Thursday"
        completedJob.sheetLength = length
        completedJob.sheetWidth = width
        completedJob.sheetThick = thick
        completedJob.project = project
        completedJob.colour = picColour
        completedJob.materialCombined()
        completedJob.jobDate = mydateStart
        

        
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
    let myColourArray = ["White", "Colour", "Raw", "Veneer", "Ply"]
    let myProjectArray = ["Queens Street", "EQ Towers", "BayView", "Town Towers"]
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        mydateStart = String(NSDate)
       
        
        // Size of board selector
        
        
        if pickerView.tag == 1
        {
            let myPick = component
            if myPick == 0
            {
                length = (myLengthArray[row])
                
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
          //      print("Thick \(myThickArray[row])")
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
        else {
         //   print(pickerView.tag)
            return 2
        }
       
       
        
    }
    
    
    // returns the # of rows in each component..
   
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
        
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        currentMaterial=(myProjectArray[row])
        project = (myProjectArray[row])
        print(currentMaterial)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        currentMaterialGettingWorked.hidden = true
        currentMaterialGettingWorked.text = String (picker)
        currentProject.hidden = true
        countingLabel.hidden = true

        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  //  override func prepareForSegue(segue: UITableViewController, sender: AnyObject?) {
        
        
            }

