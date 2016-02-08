//
//  SectionsClass.swift
//  ParseDemo
//
//  Created by Charles Caruana on 6/02/2016.
//  Copyright © 2016 abearablecode. All rights reserved.
//

import UIKit



class SectionsClass: UITableViewController, UITableViewDataSource {
    
    
    
    //TableView data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sections[section].items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let item = self.sections[indexPath.section].items[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = "\(item.thingA) \(item.thingB)"
        return cell
    }
    
    /* section headers appear above each `UITableView` section */
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        // do not display empty `Section`s
        if !self.sections[section].items.isEmpty {
            return self.collation.sectionTitles[section] as String
        }
        return ""
    }
    
    /* section index titles displayed to the right of the `UITableView` */
    override func sectionIndexTitlesForTableView(tableView: UITableView) -> [AnyObject] {
        return self.collation.sectionIndexTitles
    }
    
    override func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        return self.collation.sectionForSectionIndexTitleAtIndex(index)
    }
    
}

}
