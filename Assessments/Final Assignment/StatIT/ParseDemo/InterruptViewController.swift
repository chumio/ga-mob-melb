//
//  InterruptViewController.swift
//  StatIT
//
//  Created by Charles Caruana on 8/02/2016.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import UIKit

class InterruptViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    
   
    
    
    @IBOutlet weak var haltReason: UIPickerView!
    
    @IBOutlet weak var noteText: UITextView!
    @IBOutlet weak var ReasonForMAchne: UILabel!
    
    
    
   var haltArray = ["Program error from the office", "Vacumme Error", "Label printer error", "Loading table error", "Operator error"]
    
   var solvedArray = ["Restarted the machine", "Reset the trip switch", "Downloaded new program", "Technitian sorted it out"]
    
    @IBOutlet weak var intDateLabel: UITextField!
    
    
    var recDate :String = ""
    
    var halt = Interrupt()
    
    
    
    // Picker Wheel
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    { if pickerView.tag == 3
    {
   
       return String(haltArray[row])
        }
    else {
         return String(solvedArray[row])
        }
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
       return 1
        
    }
    
    
    // returns the # of rows in each component..
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if pickerView.tag == 3
        {
            return haltArray.count
        }
        else
        {
            return solvedArray.count
            
        }
        
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if pickerView.tag == 3 {
            halt.intProblem = (haltArray[row])
            print(halt.intProblem)
        }
        else {
            halt.intSolved = (solvedArray[row])
            print(solvedArray[row])
        }
        
        
       
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let titleData = haltArray[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Arial", size: 20.0)!,NSForegroundColorAttributeName:UIColor.blueColor()])
        pickerLabel.attributedText = myTitle
        return pickerLabel
    }
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 36.0
    }
//        currentMaterial=(myProjectArray[row])
//        project = (myProjectArray[row])
//        print(myProjectArray[row])
//        if pickerView.tag == 1
//        {
//            let myPick = component
//            if myPick == 0
//            {
//                length = (myLengthArray[row])
//            }
//            else if myPick == 1
//            {
//                width = (myWidthArray[row])
//            }
//            else
//            {
//                thick = (myThickArray[row])
//            }
//        }
//        else
//        {
//            let myPick = component
//            if myPick == 0
//            {
//                picColour = myColourArray[row]
//            }
//            else
//            {
//                project = (myProjectArray[row])
//            }
//        }
//        
        
    

    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       intDateLabel.text = recDate
        
        var borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        noteText.layer.borderWidth = 0.5
        noteText.layer.borderColor = borderColor.CGColor
        noteText.layer.cornerRadius = 5.0
       
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
