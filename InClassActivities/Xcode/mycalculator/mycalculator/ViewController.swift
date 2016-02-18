//
//  ViewController.swift
//  mycalculator
//
//  Created by Charles Caruana on 26/11/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTwo: UITextField!
    
    @IBOutlet weak var numberOne: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func add(sender: AnyObject) {
        
        let num1 = numberOne!.text!
        let num2 = numberTwo!.text!
        
        let myIntNumber = Int(num1)!
        let myIntNumberTwo = Int(num2)!
        
        let math = Math()
        let result = math.add(myIntNumber, secondNumber:myIntNumberTwo)
        
        
        
       answer.text = String(result)
        

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

