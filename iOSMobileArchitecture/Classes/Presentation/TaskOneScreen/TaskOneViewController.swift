//
//  TaskOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class TaskOneViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Реализовать подписку на последовательность, используя метод subscribe. Реализовать только те замыкания сигналов, которые могут быть вызваны. Замыкания для сигналов, которые никогда не будут прокинуты текущей последовательностью, не должны быть реализованы.
        //unowned
        //Коллизия
        
        TaskOneService
            .generateRandom()
            .do(onSubscribe: { print("Someone has been subsribed\n") })
            .subscribe(onNext: { print("\($0)\n") }, onCompleted: { print("Complete\n") }, onDisposed: { print("Observable disposed") })
            .disposed(by: disposeBag)
    }
    
    private let disposeBag = DisposeBag()
}
