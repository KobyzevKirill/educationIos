//
//  TaskOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskOneViewController: UIViewController {
    @IBOutlet weak var parameterOneTextField: UITextField!
    @IBOutlet weak var parameterTwoTextField: UITextField!
    @IBOutlet weak var requestButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // По тапу на кнопку requestButton (применить rx) выводить в resultLabel значение, которое эмитит последовательность, созданная в TaskOneService, используя метод из TaskTwoViewModel.
    }
}
