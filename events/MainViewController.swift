//
//  MainController.swift
//  events
//
//  Created by 大羽田 健二 on 5/22/15.
//  Copyright (c) 2015 大羽田 健二. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.delegate = self
        var tab1:UITabBarItem? = self.tabBar.selectedItem
        println(tab1?.tag)
        
    }
    
    override func viewWillAppear(animated: Bool) {
//        var tab1:UITabBarItem? = self.tabBar.selectedItem
        println("action!!!")
//        println(tab1?.tag)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //UITabBarControllerDelegateプロトコルを実装する
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        println(tabBarController.selectedIndex)
        
        println("shouldSelectViewController")
        return true
    }
    //UITabBarControllerDelegateプロトコルを実装する
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        println("didSelectViewController")
        println(tabBarController.selectedIndex)
        var tabBarItem:UITabBarItem? = tabBarController.tabBar.selectedItem
        println(tabBarItem?.title)
        println("aaaa" + "|" + "BBBBB")
        
    }

}

