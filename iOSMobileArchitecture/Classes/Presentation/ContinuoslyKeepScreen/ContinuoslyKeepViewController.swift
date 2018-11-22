//
//  GeolocationViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 22/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit

class ContinuoslyKeepViewController: UIViewController {
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Отображать широту и долготу пользователя, следя за его передвижением. 
    }
}
