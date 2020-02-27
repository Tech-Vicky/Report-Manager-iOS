//
//  SiteDetailViewController.swift
//  Report Manager
//
//  Created by Tech World on 27/2/20.
//  Copyright © 2020 Tech World. All rights reserved.
//

import UIKit
import Firebase

class SiteDetailViewController: UIViewController {
    
    @IBAction func signoutPressed(_ sender: UIBarButtonItem) {
        
        do {
            try Auth.auth().signOut()
            
            // To Dismiss All Other View Controller
            self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
            
            }
            
            catch let signOutError as NSError {
                print ("Error signing out: %@", signOutError)
        }
        
    }
}
