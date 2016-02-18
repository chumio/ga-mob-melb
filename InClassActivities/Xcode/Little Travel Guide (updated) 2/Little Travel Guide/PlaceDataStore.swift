//
//  PlaceDataStore.swift
//  Little Travel Guide
//
//  Created by Brett J. Rapp on 3/12/2015.
//  Copyright © 2015 Roy Ho. All rights reserved.
//

import Foundation
import UIKit

class PlaceDataStore {
    
    func getMelbourneCity() -> City {
        
        let cty = City ()
        cty.Population = "Population: 4.087 million"
        cty.placeType = "City"
        cty.placeName = "Melbourne"
        cty.description = "Melbourne, Victoria’s coastal capital, is a city of stately 19th-century buildings and tree-lined boulevards. Yet at its centre is the strikingly modern Federation Square development, with plazas, bars, restaurants and cultural events along the Yarra River. In Southbank, the Melbourne Arts Precinct is site of Arts Centre Melbourne – a performing arts complex – and National Gallery of Victoria, displaying Australian and Indigenous art."
        
        return cty
    }
    
    func getAustraliaCountry() -> Country {
        
        let cntry = Country()
        cntry.MajorCities = "Major Cities: Sydney, Melbourne, Brisbane"
        cntry.placeType = "Country"
        cntry.placeName = "Australia"
        cntry.description = "Australia is an Oceanian country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands. It is the world's sixth-largest country by total area. Neighbouring countries include Papua New Guinea, Indonesia and East Timor to the north; the Solomon Islands and Vanuatu to the north-east; and New Zealand to the south-east."
        
        return cntry
    }
    

}

