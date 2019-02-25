//
//  TaskFourViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 15/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFourViewController: UIViewController {
    
    var objects = [Any]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateObjects()
    }
    
    func generateObjects() {
        let randomInt = Int.random(in: 0...5)
        for _ in  0...randomInt {
            let someFruit = ConcreteFactory.shared.makeFruit()
            objects.append(someFruit)
        }
        for _ in  0...randomInt {
            let someWindow = ConcreteFactory.shared.makeWindow()
            objects.append(someWindow)
        }
    }
}

extension TaskFourViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
