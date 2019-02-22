//
//  Factory.swift
//  iOSMobileArchitecture
//
//  Created by user on 22/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

protocol FactoryWindow {
    func makeWindow() -> Window
}

class WoodenOrPlasticWindowFactory: FactoryWindow {
    func makeWindow() -> Window {
        return WoodenWindow()
    }
}
