//
//  ViewControler2.swift
//  Notifications
//
//  Created by Charles Caruana on 15/12/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBAction func Button(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName("MyAlertNotification", object: "I'm from view controller 2")
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

}
