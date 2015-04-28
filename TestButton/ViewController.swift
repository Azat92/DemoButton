//
//  ViewController.swift
//  TestButton
//
//  Created by Azat Almeev on 28.04.15.
//  Copyright (c) 2015 Azat Almeev. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ooo") as! CustomTableViewCell
        cell.detailsButton.addTarget(self, action: "push:",   forControlEvents: UIControlEvents.TouchUpInside)
        return cell
    }
    
    func push(sender:AnyObject) {
        println("tap")
    }
}

