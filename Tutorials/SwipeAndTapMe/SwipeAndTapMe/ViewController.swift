//
//  ViewController.swift
//  SwipeAndTapMe
//
//  Created by Charles Caruana on 26/12/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBAction func TapItTwice(sender: UITapGestureRecognizer)
    {
        print("You tapped twice")
        ImageView.center.y = (view.bounds.height / 2)
        ImageView.center.x = (view.bounds.width / 2)
        
        
    }

    @IBAction func SwipeMe(sender: UISwipeGestureRecognizer) {
        print("You Swiped ME, big Deal!")
    }
        
    @IBAction func looongPress(sender: UILongPressGestureRecognizer) {
        print("You Loooong pressed me")
        ImageView.frame = CGRect(x: 0, y: 0, width: (view.bounds.width), height: view.bounds.height)

        
    }
    
    
    @IBAction func TappedMeOnce(sender: UITapGestureRecognizer) {
        
        print("You tapped me once")
        ImageView.center.y = 0 + (ImageView.bounds.height / 2)+10
        ImageView.center.x = 10 + (ImageView.bounds.height / 2)

        print(ImageView.bounds)
        print(view.bounds.height)
        ImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
    print(ImageView.bounds)}
  
    
    
    @IBAction func RotateMe(sender: UIRotationGestureRecognizer) {
        print("You rotated ME!")
        sender.rotation = 180
        
        
        
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

