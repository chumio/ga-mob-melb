//
//  ViewController.swift
//  move
//
//  Created by Charles Caruana on 26/11/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hitme(sender: AnyObject?) {
        
        let view1 = self.View1!
        let View2 = self.View2!
        
        moveViews(view1)
        moveViews(View2)
        
        
     
        
    }
    func moveViews(view : UIView){
    
    self.View1?.frame.origin.x += 2
    self.View2?.frame.origin.y += 2
    }
    
    
}