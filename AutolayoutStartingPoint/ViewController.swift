//
//  ViewController.swift
//  AutolayoutStartingPoint
//
//  Created by Matthew Hanlon on 12/4/19.
//  Copyright © 2019 The Code Hub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func greetButtonTouched(_ sender: Any) {
        self.greetingLabel.text = "Hello, " + (nameTextField.text)!
    }
    
}

