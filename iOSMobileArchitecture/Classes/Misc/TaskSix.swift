//
//  ObservableTypeExtension.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import RxSwift
import RxCocoa

extension ObservableType {
    
    // Реализовать статический метод, который создает последовательность. На вход методу передается значение (обобщенный тип), которое эмитит последовательность и затем завершается.
    static func myGenerate<T>(value: T) -> Observable<T> {
        return Observable.create { observer in
            observer.onNext(value)
            observer.onCompleted()
            return Disposables.create()
        }
    }
}
