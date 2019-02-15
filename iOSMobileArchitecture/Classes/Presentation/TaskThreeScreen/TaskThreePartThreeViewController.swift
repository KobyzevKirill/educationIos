//
//  TaskThreePartThreeViewController .swift
//  iOSMobileArchitecture
//
//  Created by user on 15/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartThreeViewController: UIViewController {
    
    @IBOutlet weak var dateTextView: UITextView!
    @IBOutlet weak var shoesTextView: UITextView!
    @IBOutlet weak var numberTextView: UITextView!
    @IBOutlet weak var foodTextView: UITextView!
    @IBOutlet weak var cityTextView: UITextView!
    
    var exampleOfClass = someClass()
    var delegate: someDelegate?
   
    @IBAction func onButtonPush(_ sender: UIButton) {
        var infoAboutChanged = ""
        if (cityTextView.text != exampleOfClass.city) {
            exampleOfClass.city = cityTextView.text
            infoAboutChanged += "City\n"
        }
        if (shoesTextView.text != exampleOfClass.typeOfShoes) {
            exampleOfClass.typeOfShoes = shoesTextView.text
            infoAboutChanged += "Type of shoes\n"
        }
        
        if (foodTextView.text != exampleOfClass.favoriteFood) {
            exampleOfClass.favoriteFood = foodTextView.text
            infoAboutChanged += "Favorite food\n"
        }
        if (dateTextView.text != exampleOfClass.date) {
            exampleOfClass.date = dateTextView.text
            infoAboutChanged += "Date\n"
        }
        if let number = Int(numberTextView.text) {
            if number != exampleOfClass.number {
                exampleOfClass.number = number
                infoAboutChanged += "Number\n"
            }
        }
        
        delegate?.transportInfo(info: infoAboutChanged, exampleOfClass: exampleOfClass)
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateTextView.text = exampleOfClass.date
        shoesTextView.text = exampleOfClass.typeOfShoes
        foodTextView.text = exampleOfClass.favoriteFood
        cityTextView.text = exampleOfClass.city
        if let number = exampleOfClass.number {
            numberTextView.text = "\(number)"
        }
    }

}
