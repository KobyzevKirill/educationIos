//
//  TaskThreeViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TaskThreeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Реализовать подписку на последовательность, используя оператор subscribe. Реализовать только те замыкания сигналов, которые могут быть вызваны. Замыкания для сигналов, которые никогда не будут прокинуты текущей последовательностью, не должны быть реализованы.
        
        TaskThreeService
            .generateErrorByCreate()
            .do(onSubscribe: { print("Someone has been subsribed on Observable1\n") })
            .subscribe(onError: { print("\($0)\n") }, onDisposed: { print("Observable1 disposed\n") })
            .disposed(by: disposeBag)
        
        
        // Реализовать подписку на последовательность, используя оператор subscribe. Реализовать только те замыкания сигналов, которые могут быть вызваны. Замыкания для сигналов, которые никогда не будут прокинуты текущей последовательностью, не должны быть реализованы.
        
        TaskThreeService
            .generateError()
            .do(onSubscribe: { print("Someone has been subsribed on Observable2\n") })
            .subscribe(onError: { print("\($0)\n") }, onDisposed: { print("Observable2 disposed\n") })
            .disposed(by: disposeBag)
    }
    
    private let disposeBag = DisposeBag()
}
