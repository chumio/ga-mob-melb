//
//  MoreInfo.swift
//  Little Travel Guide
//
//  Created by Roy Ho on 12/1/15.
//  Copyright © 2015 Roy Ho. All rights reserved.
//

import Foundation

import UIKit

class MoreInfo: UIViewController {
    override func viewDidLoad() {
    super.viewDidLoad() //accesses the base class and other custom code
        self.MoreInfoDesc.text = "For at least 40,000 years[13] before the first British settlement in the late 18th century,[14][15] Australia was inhabited by indigenous Australians,[16] who spoke languages grouped into roughly 250 language groups.[17][18] After the European discovery of the continent by Dutch explorers in 1606, Australia's eastern half was claimed by Great Britain in 1770 and initially settled through penal transportation to the colony of New South Wales from 26 January 1788. The population grew steadily in subsequent decades; the continent was explored and an additional five self-governing crown colonies were established. On 1 January 1901, the six colonies federated, forming the Commonwealth of Australia. Since federation, Australia has maintained a stable liberal democratic political system that functions as a federal parliamentary democracy and constitutional monarchy comprising six states and several territories. The population of 23.6 million[5] is highly urbanised and heavily concentrated in the eastern states and on the coast"
        self.MoreInfoTitle.text = "Essential Information"
    }
    
    @IBOutlet weak var MoreInfoTitle: UILabel!
    @IBOutlet weak var MoreInfoDesc: UILabel!
    
    
    @IBAction func dismissMoreInfo(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}


