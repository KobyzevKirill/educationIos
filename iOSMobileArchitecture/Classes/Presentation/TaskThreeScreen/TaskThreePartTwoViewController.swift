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
    @IBOutlet weak var manufacturerTextView: UITextView!
    @IBOutlet weak var systemTextView: UITextView!
    @IBOutlet weak var numberTextView: UITextView!
    
    var exampleOfPhone = Phone()
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
        
        if (manufacturerTextView.text != exampleOfPhone.manufacturer) {
            exampleOfPhone.manufacturer = manufacturerTextView.text
            infoAboutChanged += "Manufacturer\n"
        }
        if (systemTextView.text != exampleOfPhone.operatingSystem) {
            exampleOfPhone.operatingSystem = systemTextView.text
            infoAboutChanged += "operating System\n"
        }
        if let number = Int(numberTextView.text) {
            if number != exampleOfPhone.number {
                exampleOfPhone.number = number
                infoAboutChanged += "Number\n"
            }
        }
        
        
        transportInfoAboutChangedProperties?(infoAboutChanged, exampleOfPhone)
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate?.didSet()
        colorTextView.text = exampleOfPhone.color
        dateTextView.text = exampleOfPhone.dateOfMaking
        manufacturerTextView.text = exampleOfPhone.manufacturer
        systemTextView.text = exampleOfPhone.operatingSystem
        if let number = exampleOfPhone.number {
            numberTextView.text = "\(number)"
        }
    }

}
