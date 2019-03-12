//
//  TaskSixClass.swift
//  iOSMobileArchitecture
//
//  Created by user on 12.03.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

class SomeClass: TaskSixProtocol{
    typealias E = Int
    
    func asValue() -> E {
        return 15;
    }
}

class TaskSixClass{
    func someFunc<T: TaskSixProtocol>(item: T) -> Int
    where T.E == Int {
        let tmp = item.asValue()
        return tmp
    }
}
