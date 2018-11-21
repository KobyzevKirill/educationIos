//
//  TaskTwoService.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import RxSwift
import RxCocoa

class TaskTwoService {
    
    // Заменить текущий вариант создания последовательности, используя оператор create. Последовательность эмитит массивы, объявленные в классе TaskTwoService (arrayOne, arrayTwo, arrayThree) и не завершается.
    func generateByCreate() -> Observable<[String]> {
        return Observable.just([])
    }
    
    // Заменить текущий вариант создания последовательности, используя оператор of. оследовательность эмитит массивы, объявленные в классе TaskTwoService (arrayOne, arrayTwo, arrayThree).
    func generateByOf() -> Observable<[String]> {
        return Observable.just([])
    }
    
    private let arrayOne = ["1", "2", "3"]
    private let arrayTwo = ["2", "35"]
    private let arrayThree = ["-12", "24", "21"]
}
