//
//  TaskOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 10.01.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskOneViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func button(_ sender: Any) {
        label.text = textField.text
    }
}
