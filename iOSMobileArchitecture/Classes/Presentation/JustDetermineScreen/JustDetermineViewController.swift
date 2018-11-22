//
//  justDetermineViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 22/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class JustDetermineViewController: UIViewController {
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var geolocationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // По тапу на кнопку отображать текущие координаты пользователя. 
    }
}
