//
//  LogInViewController.swift
//  Report Manager
//
//  Created by Tech World on 21/2/20.
//  Copyright © 2020 Tech World. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {
    
    // View Declaration Variables
    @IBOutlet weak var emailLogIn: UITextField!
    @IBOutlet weak var passwordEmail: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailLogIn.text, let password = passwordEmail.text {
        
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                
                if let e = error {
                    self.logInAlert(title: "Log In Error", message: e.localizedDescription)
                }
                    
                else {
                    // Navigate To The List Of The Sites
                }
                
            }
            
        }
        
    }
    
    // Popup Alert Function
    func logInAlert(title: String, message: String) {
        
         let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}
