//
//  Factory.swift
//  iOSMobileArchitecture
//
//  Created by user on 26/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

class Factory {
    func makeLotOfPC(name: String, price: Double) {
        for _ in 1...100000000 {
            let somePC = PC(name: "Asus", price: 56000)
        }
        print("Finish")
    }
}
