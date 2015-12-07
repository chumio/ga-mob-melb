//
//  ViewController.swift
//  MyCalculator3
//
//  Created by Charles Caruana on 6/12/2015.
//  Copyright © 2015 chumio.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        
        if userInTheMiddleOfEnteringDigits {
            enter()
        }
        switch operation {
            case "×":
                if operandStack.count >= 2 {
            displayValue = operandStack.removeLast() * operandStack.removeLast()
            }
            
//            case "÷":
//            case "+":
//            case "-":
        default: break
        }
    }
    
    @IBOutlet weak var display: UILabel!
    
      var userInTheMiddleOfEnteringDigits : Bool = false

    @IBAction func appendDigit(sender: UIButton)
    {
        let digit = sender.currentTitle!
        
        if userInTheMiddleOfEnteringDigits{
            display.text! = digit + display.text!
        }
        else {
            display.text = digit
            userInTheMiddleOfEnteringDigits = true
            
            
        }
        
      
    }
    
    
    var operandStack = Array<Double>()
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
            
        }
        set {
            display.text = "\(newValue)"
            userInTheMiddleOfEnteringDigits = false
            
        }
    }

    
    @IBAction func enter() {
        userInTheMiddleOfEnteringDigits = false
        operandStack.append(displayValue)
        print("operandStack = \(operandStack)")
    }
    
    
    
        

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

