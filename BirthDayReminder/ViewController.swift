//
//  ViewController.swift
//  BirthDayReminder
//
//  Created by Abhas Kumar on 7/10/20.
//  Copyright © 2020 Abhas Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nameStored = UserDefaults.standard.object(forKey: "name")
        let birthdayStored = UserDefaults.standard.object(forKey: "birthday")
        
        if let name = nameStored as? String, let birthday = birthdayStored as? String {
            nameLabel.text = name
            birthdayLabel.text = birthday
        }
        // Do any additional setup after loading the view.
    }
    
    func savedata() {
        if let nameText = nameTextField.text {
            UserDefaults.standard.set(nameText, forKey: "name")
            nameLabel.text = "Name: \(nameText)"
        }
        if let birthdayText = birthdayTextField.text {
            UserDefaults.standard.set(birthdayText, forKey: "birthday")
            birthdayLabel.text = "Birthday: \(birthdayText)"
        }
    }

    @IBAction func saveDetails(_ sender: UIButton) {
        savedata()
    }
    
}

