//
//  TaskFiveViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFiveViewController: UIViewController {
    @IBOutlet weak var numberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // По тапу на кнопку numberButton начинать последовательность, которая эмитит рандомное число в диапазоне от 0 до 5. Если число не равно 5, повторять исходный Observable, используя созданный метод в Misc/Reactive/TaskFive. Полученное значение вывести в логи, используя оператор subscribe.
    }
}
