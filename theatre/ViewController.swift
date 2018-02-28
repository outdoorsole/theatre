//
//  ViewController.swift
//  theatre
//
//  Created by Maribel Montejano on 2/27/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("ViewController viewDidLoad was called")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn was called")
        textField.resignFirstResponder()
        
        theater.name = textField.text!
        
        return true
    }

}

