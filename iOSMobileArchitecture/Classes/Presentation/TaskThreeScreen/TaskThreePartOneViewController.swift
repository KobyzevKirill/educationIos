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
    
    let getInfoAboutChangedProperties = { (exampleOfStruct: Phone) -> String in
        
        return ""
    }
    
    @IBAction func onButton1Push(_ sender: UIButton) {
        exampleOfPhone.color = "Gray"
        let storyboard = UIStoryboard(name: "TaskThreePartTwoViewController", bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? TaskThreePartTwoViewController {
            
            viewController.exampleOfPhone = exampleOfPhone
            
            
            navigationController?.pushViewController(viewController, animated: true)
        }
        
    }
    
}
