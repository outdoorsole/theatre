//
//  TheatreViewController.swift
//  theatre
//
//  Created by Maribel Montejano on 2/27/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class TheatreViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var ticketCostLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("TheaterViewController viewDidLoad was called")
        
        if theater.name != nil {
            welcomeLabel.text = "Welcome, \(theater.name!)!"
        }
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
