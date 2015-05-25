//
//  TopViewController.swift
//  events
//
//  Created by 大羽田 健二 on 5/22/15.
//  Copyright (c) 2015 大羽田 健二. All rights reserved.
//

import UIKit

class TopViewController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var contens = ["まぐろ","サーモン","えび","はまち","いか","うに"]
    var selectedText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("TopView")
        
        var label:UILabel = UILabel(frame:CGRectMake(100, 200, 100, 100))
        label.text = "topだよー"
        self.view.addSubview(label)        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count(self.contens);
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        cell.textLabel?.text = self.contens[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println(indexPath.row);
        self.selectedText = self.contens[indexPath.row]
        performSegueWithIdentifier("toSubViewController",sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if(segue.identifier == "toSubViewController"){
            let subA:SubViewController = segue.destinationViewController as! SubViewController
            subA.selectedText = self.selectedText
        }
    }
}
