//
//  ViewController.swift
//  MoreClases
//
//  Created by Charles Caruana on 30/11/2015.
//  Copyright © 2015 chumio.inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var Age: UITextField!
    
    @IBOutlet weak var Answer: UITextField!
    
    @IBAction func Push(sender: AnyObject)
    
    {
        
    let calculateIt = YearCalculator ()
        
        let ageString : String = (Age.text!)
        let ageInt = Int(ageString)!
      
       
        
        calculateIt.age = ageInt
        
        let result = calculateIt.year
        
        
        print(result)
      
        
        Answer.text = ("\(result)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

