//
//  TaskSevenModel.swift
//  iOSMobileArchitecture
//
//  Created by user on 12.03.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

struct Counter {
    var countFirstImage: Int
    var countSecondImage: Int
    
    mutating func increaseFirstImage() -> Int {
        countFirstImage += 1
        return countFirstImage
    }
    mutating func increaseSecondImage() -> Int {
        countSecondImage += 1
        return countSecondImage
    }
}
