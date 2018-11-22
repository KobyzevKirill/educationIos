//
//  TaskFiveViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFiveViewController: UIViewController {
    @IBOutlet weak var currentDateLabel: UILabel!
    @IBOutlet weak var currentDateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Реализовать получение Observable<NSDate> с текущей датой следующим способом: Date.rx.current
        // Создание последовательности вынести в Misc/Reactive
        // По тапу на кнопку currentDateButton (применить rx) выводить в currentDateLabel текущую дату.
    }
}
