//
//  TaskFourViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFourViewController: UIViewController {
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // В valueLabel отображается счетчик нажатия на любую из кнопок (oneButton, twoButton). Реализовать, используя операторы scan, merge и map. Нельзя использовать сабжекты.
    }
}
