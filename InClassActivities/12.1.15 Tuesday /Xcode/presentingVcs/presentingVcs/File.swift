//
//  File.swift
//  presentingVcs
//
//  Created by Charles Caruana on 1/12/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
    var testBool : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissMyVC(sender: AnyObject) {
        
     
           self.dismissViewControllerAnimated(true, completion: nil)
        }
    
}



