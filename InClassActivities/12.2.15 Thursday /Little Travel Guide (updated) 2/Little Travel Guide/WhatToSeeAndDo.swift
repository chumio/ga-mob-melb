//
//  WhatToSeeAndDo.swift
//  Little Travel Guide
//
//  Created by Roy Ho on 12/1/15.
//  Copyright © 2015 Roy Ho. All rights reserved.
//

import Foundation
import UIKit

class WhatToSeeAndDo: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad() //accesses the base class and other custom code
        self.WhatToSeeandDoDesc.text = "Australia is a developed country and one of the wealthiest in the world, with the world's 12th-largest economy. In 2014 Australia had the world's fifth-highest per capita income.[20] Australia's military expenditure is the world's 13th-largest. With the second-highest human development index globally, Australia ranks highly in many international comparisons of national performance, such as quality of life, health, education, economic freedom, and the protection of civil liberties and political rights.[21] Australia is a member of the United Nations, G20, Commonwealth of Nations, ANZUS, Organisation for Economic Co-operation and Development (OECD), World Trade Organization, Asia-Pacific Economic Cooperation, and the Pacific Islands Forum."
        self.WhatToSeeandDoTitle.text = "What to see and do"
    }
    
    @IBOutlet weak var WhatToSeeandDoTitle: UILabel!
    @IBOutlet weak var WhatToSeeandDoDesc: UILabel!

    @IBAction func dismissMoreInfo(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}







