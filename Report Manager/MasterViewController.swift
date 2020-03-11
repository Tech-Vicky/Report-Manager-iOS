//
//  MasterViewController.swift
//  Report Manager
//
//  Created by Tech World on 27/2/20.
//  Copyright © 2020 Tech World. All rights reserved.
//

import UIKit
import Firebase

class MasterViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorColor = UIColor(white: 0.95, alpha: 1)
    }
    

    // To Sign Out User From The App
    @IBAction func signOutPressed(_ sender: UIBarButtonItem) {
        
        do {
            try Auth.auth().signOut()
            
            // To Dismiss All Other View Controller And Redirect To Home Page / Initial View 
            self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
            }
            
            catch let signOutError as NSError {
                print ("Error signing out: %@", signOutError)
        }
    
    }
    
    let siteList = ["Site ID 01", "Site ID 02", "Site ID 03", "Site ID 04", "Site ID 05", "Site ID 06"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return siteList.count
    }
    
    // To Create cell for the Storing Items
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "masterCell")
        // cell?.textLabel?.text = siteList[indexPath.row]
        // cell?.detailTextLabel?.text = siteList[indexPath.row]
        cell?.contentView.backgroundColor = UIColor(white: 0.95, alpha: 1)
        return cell!
        
    }
    
    
}
