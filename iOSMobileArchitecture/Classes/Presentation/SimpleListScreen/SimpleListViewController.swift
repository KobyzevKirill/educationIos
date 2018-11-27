//
//  SimpleListViewController.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 27/11/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class SimpleListViewController: UIViewController {
    let viewModel = SimpleListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private let disposeBag = DisposeBag()
}
