//
//  TaskFourModel.swift
//  iOSMobileArchitecture
//
//  Created by user on 15/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

protocol Window {
    var material: String { get }
    var description: String { get }
}

protocol Fruit {
    var description: String {get}
}

class WoodenWindow: Window {
    let material = "Дерево"
    var description: String {
        return "Это окно сделано из материала: \(material)."
    }
}

class Apple: Fruit {
    var description: String {
        return "Это яблоко."
    }
}
