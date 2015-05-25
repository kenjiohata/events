//
//  SubViewController.swift
//  events
//
//  Created by 大羽田 健二 on 5/25/15.
//  Copyright (c) 2015 大羽田 健二. All rights reserved.
// http://d.hatena.ne.jp/ar_tama/20120104/1325665506

import UIKit

class SubViewController : UIViewController {
    
    
    @IBOutlet weak var testLabel: UILabel!
    
    var selectedText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testLabel?.text = selectedText
 
    }
    
    override func didReceiveMemoryWarning() {
//        <#code#>
    }
    
}
