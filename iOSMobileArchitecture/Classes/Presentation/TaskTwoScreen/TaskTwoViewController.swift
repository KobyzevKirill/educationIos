//
//  TaskTwoViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 16.01.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

protocol Thing {
    func getInfo() -> String
}

class Table: Thing {
    func getInfo() -> String {
        return "Стол 2 на 2, изготовлен в 2018 году компанией \"ООО СтроимСтолы\" по заказу компании \"ООО НужныСтолы\""
    }
}

class Chair: Thing {
    func getInfo() -> String {
        return "Стул деревянный, изготовлен в 2018 году компанией \"ООО СтроимСтулья\" по заказу компании \"ООО НужныСтулья\""
    }
}

class TaskTwoViewController: UIViewController{
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    let infoAboutTable = Table()
    let infoAboutChair = Chair()

    @IBAction func pushButton(_ sender: Any) {
        if var text = textField.text {
            text = text.trimmingCharacters(in: .whitespaces)
            text = text.lowercased()
            switch text{
            case "стол":
                label.text = infoAboutTable.getInfo()
            case "стул":
                label.text = infoAboutChair.getInfo()
            default:
                label.text = "Try again!"
            }
        }
    }
}
