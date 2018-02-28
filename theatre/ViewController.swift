//
//  ViewController.swift
//  theatre
//
//  Created by Maribel Montejano on 2/27/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var promoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("ViewController viewDidLoad was called")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn was called")
        textField.resignFirstResponder()
        
        theater.name = textField.text!
        theater.promoCode = promoTextField.text!
        
        return true
    }
    @IBAction func goButton(_ sender: UIButton) {
        theater.name = nameTextField.text!
        theater.promoCode = promoTextField.text!
        
        print(theater.name!, theater.promoCode!)
        
        // the View Controller is calling the segue (self)
        performSegue(withIdentifier: "goSegue", sender: self)
    }
    
}

