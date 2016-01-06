//
//  ViewController.swift
//  PermanentStorage
//
//  Created by Charles Caruana on 29/12/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Charlie", forKey: "name")
        
       
        let name = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        print (name)
        
        var arr = [1, 2, 3]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        var recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        print (recalledArray[2])

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

