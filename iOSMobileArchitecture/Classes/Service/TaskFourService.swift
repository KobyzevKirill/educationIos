//
//  TaskFourService.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import RxSwift
import RxCocoa

class TaskFourService {
    
    // Заменить текущий вариант создания последовательности, используя метод create. Генерируется рандомное число в диапазоне от -100 до 100. Если число положительное, последовательность эмитит это число и завершается, иначе просто завершается ошибкой.
    static func generate() -> Observable<Int> {
        return Observable.create { observer in
            let randNum = Int.random(in: -100 ... 100)
            if randNum > 0 {
                observer.onNext(randNum)
                observer.onCompleted()
            } else {
                observer.onError(Problem())
            }
            return Disposables.create()
        }
    }
}
