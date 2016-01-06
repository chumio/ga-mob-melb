//
//  TableViewController.swift
//  myToDoapp
//
//  Created by Charles Caruana on 10/12/2015.
//  Copyright © 2015 Charles Caruana. All rights reserved.
//

import Foundation
import UIKit

class ToDoListController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let city1 = City()
        city1.placeName = "Sydney"
        let city2 = City()
        city2.placeName = "Melbourne"
        let city3 = City()
        city3.placeName = "Brisbane"
        
        myCities = [city1, city2, city3]
        
        city1.shortDescription = "Beaches, Sun, Surf"
        city2.shortDescription = "Culture, Arts, Food"
        city3.shortDescription = "Churches, Wine"