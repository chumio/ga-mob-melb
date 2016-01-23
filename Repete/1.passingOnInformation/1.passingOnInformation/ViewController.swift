//
//  ViewController.swift
//  1.passingOnInformation
//
//  Created by Charles Caruana on 16/12/2015.
//  Copyright © 2015 chumio.inc. All rights reserved.
//  Passing information from a text box to a label on the same view controller.

// Task 1. Passing information from a text field to a label
// create a single view controller that has 1 field, 1 button and 1 label
// The goal of this exersize is to type some text into the text field, press the update button and populate the label with the newley typed text.





import UIKit





class ViewController: UIViewController {

    
    // STEP 1. Add NewTextWillAppear here label
    // Step 2. Add TypeSometext here text field    
    // Step 3. Create an action button 'Update' and allow the NewTextWillAppear Here field to be updated with TypeSomeTextHere


    
    @IBOutlet weak var NewTextWillAppearHere: UILabel!
    
    
    @IBOutlet weak var TypeSomeText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    @IBAction func Update(sender: AnyObject) {
        NewTextWillAppearHere.text = TypeSomeText.text
        
        
    }

}

