//
//  SplashViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 21/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class SplashViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Observable<Void>
            .just(Void())
            .delaySubscription(2, scheduler: MainScheduler.instance)
            .bind(to: rx.goToSelectTaskScreen) 
            .disposed(by: disposeBag)
    }
    
    private let disposeBag = DisposeBag()
}

extension Reactive where Base: SplashViewController {
    var goToSelectTaskScreen: Binder<Void> {
        return Binder(base) { base, _ in
            let vc = UIStoryboard(name: "SelectTaskScreen", bundle: nil).instantiateViewController(withIdentifier: "SelectTaskViewController")
            let nc = UINavigationController(rootViewController: vc)
            UIApplication.shared.keyWindow?.rootViewController = nc
        }
    }
}
