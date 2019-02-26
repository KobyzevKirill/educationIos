//
//  Factory.swift
//  iOSMobileArchitecture
//
//  Created by user on 22/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

protocol AbstractFactory {
    func makeWindow() -> Window
    func makeFruit() -> Fruit
}

class ConcreteFactory: AbstractFactory {
    static let shared = ConcreteFactory()
    func makeWindow() -> Window {
        return WoodenWindow()
    }
    func makeFruit() -> Fruit {
        return Apple()
    }
}
