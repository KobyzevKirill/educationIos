//
//  TaskFourViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TaskFourViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Реализовать подписку на последовательность, используя метод subscribe.
        
        TaskFourService
            .generate()
            .subscribe(onNext: { print("\($0)\n") }, onError: { print("\($0)\n") },
                       onCompleted: { print("Observable completed\n") }, onDisposed: { print("Observable disposed\n") })
            .disposed(by: disposeBag)
    }
    
    private let disposeBag = DisposeBag()
}
