//
//  ViewController.swift
//  MyCalculator
//
//  Created by Charles Caruana on 6/12/2015.
//  Copyright © 2015 chumio.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
        display.text = display.text! + digit
        print("digit = \(digit)")
        } else {
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
            
        }
    }
    
    
    @IBAction func clear(sender: UIButton) {
        display.text = "0"
    }
    
    @IBAction func multiple(sender: UIButton) {
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

