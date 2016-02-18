//
//  ViewController.swift
//  ObjectO
//
//  Created by Charles Caruana on 26/11/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1 : UIView?
    @IBOutlet weak var view2 : UIView?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hitMe(sender: AnyObject?){
        self.view1?.frame.origin.x += 2
        self.view2?.frame.origin.y += 2
        
    }
    
}

