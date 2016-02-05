//
//  ViewController.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    

  //  TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped.

    
    @IBAction func viewTableArray(sender: AnyObject) {
    }
    @IBOutlet weak var swipeMe: UILabel!
    @IBAction func swipedLeft(sender: UISwipeGestureRecognizer) {
        
        //    You must create the modal dialog and present it in CODE (not the storyboard).
        
        let myViewController = UIViewController()
        myViewController.view.backgroundColor = UIColor.redColor()
        self.presentViewController(myViewController, animated: true, completion: nil)
        
      myViewController.modalPresentationStyle = .Popover
         //  TODO two: Add an imageview to the modal dialog presented in TODO two.
        
        var imageViewObject :UIImageView
        imageViewObject = UIImageView(frame:CGRectMake(20,20,myViewController.view.frame.size.width-40, 250));
        imageViewObject.image = UIImage(named:"puppy.jpg")
        myViewController.view.addSubview(imageViewObject)
        print("Swiped Left")
        
        let btn: UIButton = UIButton(frame: CGRectMake(20, 290, 100, 50))
        btn.backgroundColor = UIColor.greenColor()
        btn.setTitle("Dimiss", forState: UIControlState.Normal)
        btn.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        btn.tag = 1
        myViewController.view.addSubview(btn)
        
        

        
    }
    
    // View Button
    
    
    // Button function
    func buttonAction(sender: UIButton!)
    {
        var btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 {
            dismissViewControllerAnimated(true, completion: nil)
            print("button presses")
            
        }
    }
    
    
    
  
    @IBAction func tapMe(sender: UITapGestureRecognizer) {
        print("tapped")
    }
    
    

    
    
    
    
    

    
    
 //   TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
    
    
 //   TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
//

}

