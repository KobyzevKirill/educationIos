//
//  TaskThreePartOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 29/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartOneViewController: UIViewController {
    
    @IBOutlet weak var labelOfChangedInfo: UILabel!
    
    var exampleOfPhone = Phone()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButton1Push(_ sender: UIButton) {
        exampleOfPhone.color = "Gray"
        let storyboard = UIStoryboard(name: "TaskThreePartTwoViewController", bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() {
            
            
            
            navigationController?.pushViewController(viewController, animated: true)
        }
        
    }
    
}
