//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        
        
        */
        
        
        let height = CGFloat(20.0)
        let width = CGFloat(20.0)
        
        
        let bluBox1 = UIView(frame: CGRectMake(0,
            CGRectGetMaxY(self.navigationController!.navigationBar.frame),
            width,height))
        bluBox1.backgroundColor = UIColor.redColor()
        self.exerciseView.addSubview(bluBox1)
        
        
        
        
        
        let bluBox2 = UIView(frame: CGRectMake(CGRectGetMaxX(self.navigationController!.navigationBar.frame)-width,
            CGRectGetMaxY(self.navigationController!.navigationBar.frame),
            width,height))
        bluBox2.backgroundColor = UIColor.orangeColor()
        self.exerciseView.addSubview(bluBox2)
        
        
        
        
        
        let bluBox3 = UIView(frame: CGRectMake(0,(CGRectGetMinY(self.toolbar.frame)-20),20,20))
        bluBox3.backgroundColor = UIColor.redColor()
        self.exerciseView.addSubview(bluBox3)
        
        let bluBox4 = UIView(frame: CGRectMake(120,(CGRectGetMinY(self.navigationController?.toolbar.frame)-20),20,20))
        bluBox4.backgroundColor = UIColor.blueColor()
        self.exerciseView.addSubview(bluBox3)
        
       
        
   
    }
    
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
}
