//
//  ViewController.swift
//  OutletAndActions
//
//  Created by Charles Caruana on 24/11/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var helloWorldLable : UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeLabel(sender: AnyObject?)
    {
       
        self.helloWorldLable!.text = string(result) "Hello Charlie"
    }

}	

