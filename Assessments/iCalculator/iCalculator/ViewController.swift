//
//  ViewController.swift
//  iCalculator
//
//  Created by Charles Caruana on 6/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import UIKit
var lcd:String = "0"

class ViewController: UIViewController {
    var specialFunction:String = ""
    

    
    @IBAction func memoryFunctionSelected(sender: UIButton)
    {
        memoryFunction.text = (sender.titleLabel!.text!)
        
        
        if memoryFunction.text == "m+"
            {
            memoryHold = numberStack [0]
            memoryFunction.text = ("m+ \(memoryHold)")
            numberStack.append(memoryHold)
            }
        if memoryFunction.text == "m-"
            {
            memoryHold = numberStack [0] - (numberStack [0] * 2)
            memoryFunction.text = ("m- \(memoryHold)")
            }
        
        
        
        if memoryFunction.text == "mr"
            {
            displayNumber =  memoryHold
            lcdDisplay.text=NSString(format: "%g",displayNumber) as String
            if numberStack.count > 1
                {
                numberStack.removeLast()
                numberStack.append(memoryHold)
                }
            else
                {
                numberStack.append(memoryHold)
                lcdDisplay.text=NSString(format: "%g",displayNumber) as String
                }
                
            memoryFunction.text = ("m+ \(memoryHold)")
            
            }
    }
    @IBAction func clearMemory(sender: AnyObject)
        {
        memoryFunction.text = ""
        }
    
    @IBOutlet weak var memoryFunction: UITextField!
    @IBOutlet weak var lastOpSelct: UITextField!
    
    
    @IBOutlet weak var operation: UITextField!
    var displayNumber: Double = 0
    var functionButtonSelected :String = ""
    var numberStack = [0.0]
    var memoryHold: Double = 0
    var memoryHoldLcd :String = ""
    var numberStackIndex :Int = 0
    
   
  
    // CLEAR ALL
    
    @IBAction func clearDisplay(sender: AnyObject)
    {
        
    }
    
    
    
    @IBAction func plusMinusFunction(sender: UIButton)
        {
        displayNumber = displayNumber - (displayNumber * 2)
        lcdDisplay.text=NSString(format: "%g",displayNumber) as String
        numberStack=[]
        numberStack.append(displayNumber)
        }

    
    @IBOutlet weak var lcdDisplay: UITextField!
    @IBAction func numButton(sender: UIButton)
        {
        let numberPressed = (sender.titleLabel?.text)!
        let currentDisplay = lcdDisplay!.text!
        let numPresses = Double(numberPressed)
        if currentDisplay == "0"
            {
            lcdDisplay.text = sender.titleLabel!.text!
            if sender.titleLabel!.text == "."
                {
                displayNumber = 0.0
                }
            else
                {
                displayNumber = Double((sender.titleLabel?.text)!)!}
                numberStack.append(displayNumber)
                }
        else if functionButtonSelected == "selected"
                {
                lcdDisplay!.text! = numberPressed
                numberStack.removeLast()
                    if sender.titleLabel!.text == "."
                    {
                    numberStack.append(0.0)
                    }
                
                    else
                    {
                        numberStack.append(numPresses!)
                    }

            
                    functionButtonSelected = "notSelected"
                    }
        else
            {
                let number = sender.titleLabel!.text!
                lcdDisplay!.text! = currentDisplay + number
                displayNumber = Double(lcdDisplay!.text!)!
                numberStack.removeLast()
                numberStack.append(displayNumber)
            }
        }
    
    
    // PERCENT FUNCTION
    
    @IBAction func percentFunction(sender: AnyObject)
        {
        displayNumber = numberStack[1] * (numberStack[0]/100)
        lcdDisplay.text=NSString(format: "%g",displayNumber) as String
        lastOpSelct.text = "%"
        specialFunction = "%"
       
        return
        
        }
    
    
    
    
    
    // The ADD FUNCTION
    
    @IBAction func addFunction(sender: UIButton)
        {
        lastOpSelct.text = operation.text
        functionButtonSelected = "selected"
        let number = sender.titleLabel!.text!
        operation.text = number
        if number != "0"
            {
            if numberStack.count > 1
                {
                if lastOpSelct.text == "+" && specialFunction == ""
                    {
                    displayNumber = numberStack[0] + numberStack[1]
                    lcdDisplay.text=NSString(format: "%g",displayNumber) as String
                    numberStack = []
                    numberStack.append(displayNumber)
                    numberStack.append(displayNumber)
                    }
                
                else if lastOpSelct.text == "−" && specialFunction == ""
                    {
                    if operation.text != lastOpSelct
                        {
                        displayNumber = numberStack[0] - numberStack[1]
                        lcdDisplay.text=NSString(format: "%g",displayNumber) as String
                        numberStack = []
                        numberStack.append(displayNumber)
                        numberStack.append(displayNumber)
                        }
                    }
                    
                else if lastOpSelct.text == "×"
                    {
                    displayNumber = numberStack[0] * numberStack[1]
                    lcdDisplay.text=NSString(format: "%g",displayNumber) as String
                    numberStack = []
                    numberStack.append(displayNumber)
                    numberStack.append(displayNumber)
                    }
                
                else if lastOpSelct.text == "÷"
                    {
                    displayNumber = numberStack[0] / numberStack[1]
                    lcdDisplay.text=NSString(format: "%g",displayNumber) as String
                    numberStack = []
                    numberStack.append(displayNumber)
                    numberStack.append(displayNumber)
                    }
                functionButtonSelected = "selected"
                
                if operation.text == "="
                    {
                    if specialFunction == "%"
                        {
                        if lastOpSelct.text! == "+"
                            {
                            displayNumber = displayNumber + numberStack[0]
                            }
                        else if lastOpSelct.text! == "−"
                            {
                            displayNumber =  numberStack[0] - displayNumber
                            }
                        
                        lcdDisplay.text=NSString(format: "%g",displayNumber) as String
                        numberStack = []
                        numberStack.append(displayNumber)
                        numberStack.append(displayNumber)
                    }
                    
                        numberStack.removeLast()
                        functionButtonSelected = "notSelected"
                        operation.text = ""
                        lastOpSelct.text = ""
                    
                    }
                    return
             
                }
            
            else {

                numberStack = [displayNumber,0.0]
                functionButtonSelected = "selected"
                }

            }
        
        
        }
    
    override func viewDidLoad() {
        lcdDisplay!.text! = "0"
        numberStack = []
        functionButtonSelected = "notSelected"
        operation.text = ""
        lastOpSelct.text = ""
        specialFunction = ""
        numberStackIndex = 0
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

