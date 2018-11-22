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
            .bind(to: rx.goToNetworkReachabilityScreen) // Для проверки заданий менять на соответствующий экран
            .disposed(by: disposeBag)
    }
    
    private let disposeBag = DisposeBag()
}

extension Reactive where Base: SplashViewController {
    var goToNetworkReachabilityScreen: Binder<Void> {
        return Binder(base) { base, _ in
            let vc = UIStoryboard(name: "NetworkReachabilityScreen", bundle: nil).instantiateViewController(withIdentifier: "NetworkReachabilityViewController")
            let nc = UINavigationController(rootViewController: vc)
            UIApplication.shared.keyWindow?.rootViewController = nc
        }
    }
}
