//
//  TaskThreeViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreeViewController: UIViewController {
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Последовательность, созданная в TaskThreeService, эмитит число. Отображать это значение в valueLabel. Если число кратно 2, цвет текста зеленого цвета, иначе красного цвета. Использовать оператор map. Нельзя использовать оператор subscribe.
    }
}
