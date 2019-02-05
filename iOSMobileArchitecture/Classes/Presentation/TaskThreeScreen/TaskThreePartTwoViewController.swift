//
//  TaskThreePartTwoViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 29/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartTwoViewController: UIViewController {

    var exampleOfPhone = Phone()
    
    @IBOutlet weak var FirstField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FirstField.text = exampleOfPhone.color
    }
    
}
