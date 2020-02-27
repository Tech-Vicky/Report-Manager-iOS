//
//  PrimarySplitViewController.swift
//  Report Manager
//
//  Created by Tech World on 28/2/20.
//  Copyright © 2020 Tech World. All rights reserved.
//

import UIKit

class PrimarySplitViewController: UISplitViewController,
                                  UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.preferredDisplayMode = .allVisible
    }

    func splitViewController(
             _ splitViewController: UISplitViewController,
             collapseSecondary secondaryViewController: UIViewController,
             onto primaryViewController: UIViewController) -> Bool {
        // Return true to prevent UIKit from applying its default behavior
        return true
    }
    
    /*
    // Resources:
    
    // 1. Show Detail Popup Befor Master View : https://stackoverflow.com/questions/29506713/open-uisplitviewcontroller-to-master-view-rather-than-detail
    
    */
    
}
