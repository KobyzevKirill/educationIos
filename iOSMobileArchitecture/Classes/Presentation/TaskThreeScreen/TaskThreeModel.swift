//
//  TaskThreeModel.swift
//  iOSMobileArchitecture
//
//  Created by user on 05.02.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

protocol someDelegate {
    func transportInfo(info: String, exampleOfClass: someClass)
}

struct Phone {
    var dateOfMaking: String? = ""
    var number: Int?
    var color: String? = ""
    var manufacturer: String? = ""
    var operatingSystem: String? = ""
}

class someClass {
    var number: Int?
    var date: String? = ""
    var city: String? = ""
    var typeOfShoes: String? = ""
    var favoriteFood: String? = ""
}
