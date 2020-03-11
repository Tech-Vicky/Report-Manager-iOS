//
//  ImageViewController.swift
//  Report Manager
//
//  Created by Tech World on 8/3/20.
//  Copyright © 2020 Tech World. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self as UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
    }
    
    @IBOutlet weak var imageSave: UIImageView!
    
    @IBAction func uploadImageClicked(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    
}

extension ImageViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.editedImage ] as? UIImage {
            imageSave.image = image
        }
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
