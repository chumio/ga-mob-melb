//
//  LoginViewController.swift
//  iInstalledIt
//
//  Created by Charles Caruana on 25/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
   
    @IBOutlet weak var userPasswordTExtField: UITextField!
    @IBOutlet weak var userEmailTetField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func logInButtonTapped(sender: AnyObject) {
        
        let userEmail1 = userEmailTetField.text
        let userPassword1 = userPasswordTExtField.text
        
        let userEmailStored = NSUserDefaults.standardUserDefaults().stringArrayForKey("userEmail1")
        
        let userPasswordStored = NSUserDefaults.standardUserDefaults().stringArrayForKey("userPassword1")
        
        if (userEmailStored == userEmail)
        {
            if(userPasswordStored == userPassword)
            {
                // Login successfull
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
}