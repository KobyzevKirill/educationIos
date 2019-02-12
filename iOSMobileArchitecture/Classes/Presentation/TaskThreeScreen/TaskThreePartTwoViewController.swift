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

    @IBOutlet weak var colorTextView: UITextView!
    @IBOutlet weak var dateTextView: UITextView!
    var exampleOfPhone = Phone()
    //var delegate: test?
    var transportInfoAboutChangedProperties: ((String, Phone) -> ())?
    
    @IBAction func onButtonPush(_ sender: UIButton) {
        
        var infoAboutChanged = ""
        if (colorTextView.text != exampleOfPhone.color) {
            exampleOfPhone.color = colorTextView.text
            infoAboutChanged += "Color\n"
        }
        if (dateTextView.text != exampleOfPhone.dateOfMaking) {
            exampleOfPhone.dateOfMaking = dateTextView.text
            infoAboutChanged += "Date of making\n"
        }
        
        transportInfoAboutChangedProperties?(infoAboutChanged, exampleOfPhone)
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate?.didSet()
        colorTextView.text = exampleOfPhone.color
        dateTextView.text = exampleOfPhone.dateOfMaking
    }

}
