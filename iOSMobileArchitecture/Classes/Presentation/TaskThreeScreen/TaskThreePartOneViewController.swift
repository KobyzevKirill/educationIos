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
    
    let giveInfoAboutChangedProperties = { (info: String) -> () in
        
    }
    
    @IBAction func onButton1Push(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "TaskThreePartTwoViewController", bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? TaskThreePartTwoViewController {
            
            viewController.exampleOfPhone = exampleOfPhone
            viewController.transportInfoAboutChangedProperties = { [weak self] (infoAboutChanged, exampleOfPhone) -> () in
                self?.labelOfChangedInfo.text = infoAboutChanged
                self?.exampleOfPhone = exampleOfPhone
            }
            
            navigationController?.pushViewController(viewController, animated: true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
