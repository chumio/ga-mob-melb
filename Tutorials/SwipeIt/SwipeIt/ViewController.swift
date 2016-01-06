//
//  ViewController.swift
//  SwipeIt
//
//  Created by Charles Caruana on 27/12/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var ImageView: UIImageView!

    @IBAction func pinchMyBum(sender: UIPinchGestureRecognizer) {print("Hey! stop pinching me!")
        
    }
 
 
    @IBAction func SwipedRight(sender: UISwipeGestureRecognizer) {print("you swiped right")
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

