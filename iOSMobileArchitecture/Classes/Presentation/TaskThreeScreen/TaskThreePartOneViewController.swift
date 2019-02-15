//
//  TaskThreePartOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 29/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartOneViewController: UIViewController, someDelegate {
    
    @IBOutlet weak var labelOfChangedInfo: UILabel!
    
    func transportInfo(info: String, exampleOfClass: someClass) {
        labelOfChangedInfo.text = info
        self.exampleOfClass = exampleOfClass
    }
    
    var exampleOfPhone = Phone()
    var exampleOfClass = someClass()
    
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
    
    @IBAction func onButton2Push(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "TaskThreePartThreeViewController", bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? TaskThreePartThreeViewController {
            
            viewController.exampleOfClass = exampleOfClass
            viewController.delegate = self
            
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
