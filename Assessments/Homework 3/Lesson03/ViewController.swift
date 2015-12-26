//
//  ViewController.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var swipeMe: UILabel!

    @IBOutlet var SwipeIt: UISwipeGestureRecognizer!

    @IBAction func swipeMeNow(sender: UISwipeGestureRecognizer)
    { print("Great work, you have swiped me, now what??")
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let orangeVC = storyBoard.instantiateViewControllerWithIdentifier("orangeView")
        
        self.presentViewController(orangeVC, animated: true, completion: nil)
       
    }
    
    @IBAction func tappMeNow(sender: UITapGestureRecognizer) {
        print("Ok, now you have tapped me, now what")
    }
    
    @IBAction func dispalyViewController(sender: UIButton) {
        performSegueWithIdentifier("show", sender: self)
        
    }
    
   
    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard). DONE
    TODO two: Add an imageview to the modal dialog presented in TODO two. DONE
    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE. DONE
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard. DONE
    */

}

