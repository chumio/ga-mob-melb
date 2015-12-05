//
//  ViewController.swift
//  MyCalclulator2
//
//  Created by Charles Caruana on 6/12/2015.
//  Copyright © 2015 chumio.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isUserInTheMiddleOfTypingADigit :Bool = false
    
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        
        if isUserInTheMiddleOfTypingADigit
        {
            
        print("\(digit)")
        
        display.text = display.text! + digit
            
        } else {
            display.text! = digit
            isUserInTheMiddleOfTypingADigit = true
            
        }
        
        
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

