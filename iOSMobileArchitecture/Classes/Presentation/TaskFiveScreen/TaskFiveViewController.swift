//
//  TaskFiveViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TaskFiveViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Реализовать подписку на последовательность, используя метод subscribe.
        
        TaskFiveService
            .completedByCreate()
            .subscribe(onCompleted: { print("Observable completed\n") }, onDisposed: { print("Observable disposed\n") })
            .disposed(by: disposeBag)
        
        // Реализовать подписку на последовательность, используя метод subscribe.
        
        TaskFiveService
            .completed()
            .subscribe(onCompleted: { print("Observable completed\n") }, onDisposed: { print("Observable disposed\n") })
            .disposed(by: disposeBag)
    }
    
    private let disposeBag = DisposeBag()
}
