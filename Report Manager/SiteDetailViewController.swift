//
//  SiteDetailViewController.swift
//  Report Manager
//
//  Created by Tech World on 27/2/20.
//  Copyright © 2020 Tech World. All rights reserved.
//

import UIKit
import Firebase

class SiteDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // 1. Site Detail Checklist
    @IBOutlet weak var siteDetailList: UITableView!
    var listItemArray:[String] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding Checklist To The Array
        listItemArray.append("Cleaning list no 1")
        listItemArray.append("Cleaning list no 2")
        listItemArray.append("Cleaning list no 3")
        listItemArray.append("Cleaning list no 4")
        listItemArray.append("Cleaning list no 5")
        listItemArray.append("Cleaning list no 6")
        
        siteDetailList.register(UINib.init(nibName: "CheckMarkCell", bundle: nil), forCellReuseIdentifier: "CheckListIdentifier")
        siteDetailList.dataSource = self
        siteDetailList.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListIdentifier") as! CheckMarkCell
        cell.lblTitle.text = listItemArray[indexPath.row]
        cell.selectionStyle = .none
        
        // To Perform Action When Checkbocx Is Clicked
        cell.btnCheckMark.addTarget(self, action: #selector(checkMarkButtonClicked(sender:)), for: .touchUpInside)
        
        // To Perform Action When Image Button is Clicked
        cell.btnImage.addTarget(self, action: #selector(imageButtonClicked(sender:)), for: .touchUpInside)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        71.0
    }
    
    @objc func checkMarkButtonClicked( sender: UIButton) {
        
        if sender.isSelected {
            // Uncheck The Button
            sender.isSelected = false
        }
        else {
            // Checkmark It
            sender.isSelected = true
        }
    }
    
    // 2. Image Button Pressed
    @objc func imageButtonClicked( sender: UIButton){
        performSegue(withIdentifier: "ToImageCollection", sender: self)
    }
    
    
    
    // Sign Out Function
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

/*
 // Resources:
 
 // 1. Site Detail Checklist : https://www.youtube.com/watch?v=WDQkjOcrbQE
 // 2. Image Picker Functionality : https://www.youtube.com/watch?v=0EF2QsUOj90&t=176s
 
 */
