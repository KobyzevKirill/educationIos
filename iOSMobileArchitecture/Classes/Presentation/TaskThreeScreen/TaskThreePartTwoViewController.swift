//
//  TaskThreePartTwoViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 29/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

protocol test {
    func didSet()
}

class TaskThreePartTwoViewController: UIViewController {

    var exampleOfPhone = Phone()
    //var delegate: test?
    @IBOutlet weak var FirstField: UITextField!
    
    
    @IBAction func onButtonPush(_ sender: UIButton) {
        exampleOfPhone.color = FirstField.text
        let storyboard = UIStoryboard(name: "TaskThreePartOneViewController", bundle: nil)
        if let viewController = storyboard.instantiateInitialViewController() as? TaskThreePartOneViewController {
            viewController.getInfoAboutChangedProperties(exampleOfPhone)
            
            navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate?.didSet()
        FirstField.text = exampleOfPhone.color
    }
    
}
