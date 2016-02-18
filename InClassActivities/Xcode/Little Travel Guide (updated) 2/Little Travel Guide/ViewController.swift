//
//  ViewController.swift
//  Little Travel Guide
//
//  Created by Roy Ho on 12/1/15.
//  Copyright © 2015 Roy Ho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {    
    
    var isCountry: Bool = true
    
    @IBOutlet weak var placetype: UILabel!

    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var info: UILabel!
    
    @IBOutlet weak var moreinfobutton: UIButton!
    
    @IBOutlet weak var PlacesButton: UIButton!
    
    override func viewDidLoad() { //this sets the first thing appearing on the view.
        super.viewDidLoad()
        let cntry = Country()
        cntry.MajorCities = "Major Cities: Sydney, Melbourne, Brisbane"
        cntry.placeType = "Country"
        cntry.placeName = "Australia"
        cntry.description = "Australia is an Oceanian country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands. It is the world's sixth-largest country by total area. Neighbouring countries include Papua New Guinea, Indonesia and East Timor to the north; the Solomon Islands and Vanuatu to the north-east; and New Zealand to the south-east."
        displayPlace(cntry)
        self.moreinfobutton.setTitle("Essential Information", forState: UIControlState.Normal)
        self.PlacesButton.hidden = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showCountry(sender: AnyObject) {
        let dataStore = PlaceDataStore()
        let australiaCountry = dataStore.getAustraliaCountry()
        displayPlace(australiaCountry)
        self.moreinfobutton.setTitle("Essential Information", forState: UIControlState.Normal)
        self.isCountry = true
        self.PlacesButton.hidden = false
        
    }

    @IBAction func showCity(sender: AnyObject) {
        let dataStore = PlaceDataStore()
        let melbourneCity = dataStore.getMelbourneCity()
        displayPlace(melbourneCity)
        self.moreinfobutton.setTitle("What To See and Do", forState: UIControlState.Normal)
        self.isCountry = false
        self.PlacesButton.hidden = true
    }
    
    func displayPlace(place:Place) {
        if let city = place as? City { //way to check the type city or type country
            self.desc.text = city.description
            self.info.text = city.Population
            self.placetype.text = city.placeType
        } else if let country = place as? Country {
            self.desc.text = country.description
            self.info.text = country.MajorCities
            self.placetype.text = country.placeType
        }
        

    }
    
    @IBAction func PlacesToVisit(sender: AnyObject) {
        self.performSegueWithIdentifier("ShowPlacesToVisit", sender: sender)
    }
    
    @IBAction func Info(sender: AnyObject) {
        if (self.isCountry){
            self.performSegueWithIdentifier("ShowCountryInfo", sender: sender)
        } else {
            self.performSegueWithIdentifier("ShowWhatToSeeAndDo", sender: sender)
        }
    
    }

}
