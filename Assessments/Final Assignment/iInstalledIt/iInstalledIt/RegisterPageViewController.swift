//
//  RegisterPageViewController.swift
//  iInstalledIt
//
//  Created by Charles Caruana on 25/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import UIKit


class RegisterPageViewController: UIViewController {
    
    
    func displayMyAlertMessage(userMessage:String)
    {
        var myAlert = UIAlertController(title: "Alert", message: userMessage,preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        
        
    }
    

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var UserPasswordTextField: UITextField!
    @IBOutlet weak var UserRepetePasswordTextField: UITextField!
    @IBAction func registerButtonTapped(sender: UIButton) {
        
        let userEmail = UserPasswordTextField.text;
        let userPassword = UserPasswordTextField.text;
        let userRepete = UserRepetePasswordTextField.text;
        
        
        // check for emty field
        
        if (userEmail!.isEmpty || userPassword!.isEmpty || userRepete!.isEmpty)
        
        {
            displayMyAlertMessage("All fields are required")
 
        // display alert message with confirmation
        return;
        }
        
//        // Store data
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey:"userEmail")
        NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey:"userPassword")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        // Display Confirmed mesage
        var myAlert = UIAlertController(title: "Alert", message: "Registraion has been sucsessfull. Thank you",preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){ action in self.dismissViewControllerAnimated(true, completion:nil)
            
        }
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        if (userPassword != userRepete)
            
        {
        // Display an alert message
        
            return;
        
        }
      
    }
}

