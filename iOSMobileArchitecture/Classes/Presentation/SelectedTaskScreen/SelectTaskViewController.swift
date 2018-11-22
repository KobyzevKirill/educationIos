//
//  SelectedTaskViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 22/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class SelectTaskViewController: UIViewController {
    @IBOutlet weak var continuoslyKeepButton: UIButton!
    @IBOutlet weak var justDetermineButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // По тапу на кнопку переходить на соответствующий экран. Реализовать навигацию, используя метод bind(to: ) и Binder. 
    }
}
