//
//  TaskSevenViewController.swift
//  iOSMobileArchitecture
//
//  Created by user on 12.03.2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskSevenViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var counter = Counter(countFirstImage: 0, countSecondImage: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onButtonPush(_ sender: UIButton) {
        DispatchQueue.global(qos: .background).async {
            let count: Int?
            let image: UIImage?
            if (Bool.random()) {
                image = UIImage(named: "FirstImage")!
                count = self.counter.increaseFirstImage()
            } else {
                image = UIImage(named: "SecondImage")!
                count = self.counter.increaseSecondImage()
            }
            DispatchQueue.main.async {
                self.label.text = "\(count!)"
                self.imageView.image = image
                self.imageView.sizeToFit()
            }
        }
    }
    
}
