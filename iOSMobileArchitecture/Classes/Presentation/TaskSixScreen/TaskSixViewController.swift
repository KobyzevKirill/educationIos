//
//  TaskSixViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TaskSixViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Выполнить подписку на последовательность (см. задание в Misc/TaskSix). В логи распечатать значение, переданное на вход методу, выполнив подписку на последовательность.
        let value = ["Cat","Dog","Pig"]
        Observable<Any>
            .myGenerate(value: value)
            .do(onSubscribe: { print("Someone has been subsribed on Observable1\n") })
            .subscribe(onNext: { print("\($0)\n") }, onCompleted: { print("Observable completed\n") }, onDisposed: { print("Observable disposed\n") })
            .disposed(by: disposeBag)
    }
    
    let disposeBag = DisposeBag()
}
