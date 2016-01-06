//
//  ViewController.swift
//  gestureDemo
//
//  Created by Charles Caruana on 7/12/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var swipeView: UIView!
    
    let swipeRec = UISwipeGestureRecognizer()
    
    
    


//    func swipedView()
//    {
//        let tapAlert = UIAlertController(title: "Swiped", message: "You just swiped the swipe view", preferredStyle: UIAlertControllerStyle.Alert)
//        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
//        self.presentViewController(tapAlert, animated: true, completion: nil)
//    }
    
    
    
    
    
    

    override func viewDidLoad() {
        


        super.viewDidLoad()
        
//        
//        swipeRec.addTarget(self, action: "swipedView")
//        swipeView.addGestureRecognizer(swipeRec)
//        swipeView.userInteractionEnabled = true
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

