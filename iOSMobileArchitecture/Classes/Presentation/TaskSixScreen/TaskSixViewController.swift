//
//  TaskSixViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskSixViewController: UIViewController {
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var valueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // По тапу на кнопку valueButton (применить rx) выводить в valueLabel значение, которое эмити последовательность, созданная в TaskSixService. В случае, если последовательность завершается ошибкой, в valueLabel отображать текст "Ошибка". Нельзя использовать оператор subscribe.
    }
}
