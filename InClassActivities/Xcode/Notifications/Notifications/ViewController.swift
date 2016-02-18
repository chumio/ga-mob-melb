//
//  ViewController.swift
//  Notifications
//
//  Created by Charles Caruana on 15/12/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: "alertShown:",
            name: "MyAlertNotification",
            object: nil)
    }
    
    func alertShown(notification: NSNotification){
        print("My notification received on the home screen")
        
        let object : AnyObject? = notification.object
        let mystring = object as? String
        
        print("My notification Received on the home screen: \(mystring)")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
@IBAction func ShowAlert(sender: AnyObject) {
    
    NSNotificationCenter.defaultCenter().postNotificationName("MyAlertNotification", object: nil)
    
}

}
    
    


