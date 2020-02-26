//
//  SignUpViewController.swift
//  Report Manager
//
//  Created by Tech World on 20/2/20.
//  Copyright © 2020 Tech World. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    // Interface Variables
    @IBOutlet weak var emailtextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // When Sign Up Button Is Clicked
    @IBAction func signUpPressed(_ sender: UIButton) {
        
        if let email = emailtextField.text, let password = passwordTextField.text {
        
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                
                if let e = error {
                    self.signUpAlert(title: "Sign Up Error", message: e.localizedDescription)
                } else {
                    // Navigate To The List Of Sites
                }
                
            }
            
        }
        
    }
    
    func signUpAlert(title: String, message: String) {
        
         let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}
