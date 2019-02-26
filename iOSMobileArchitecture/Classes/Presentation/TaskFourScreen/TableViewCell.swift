//
//  TableViewCell.swift
//  iOSMobileArchitecture
//
//  Created by user on 25/02/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var infoLabel: UILabel!
    
    func bind(text: String) {
        infoLabel.text = text
    }
}
