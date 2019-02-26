//
//  TaskFiveViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 26/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFiveViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonPush(_ sender: UIButton) {
        activityIndicator.startAnimating()
        let someFactory = Factory()
        let queue = DispatchQueue.global(qos: .background)
        queue.async {
            someFactory.makeLotOfPC(name: "Asus", price: 60000)
            DispatchQueue.main.async {
                self.activityIndicator.stopAnimating()
            }
        }
    }
}
