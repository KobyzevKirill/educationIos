//
//  Problem.swift
//  DrSmart
//
//  Created by Andrey Chernyshev on 04.07.2018.
//  Copyright © 2018 SimbirSoft. All rights reserved.
//

struct Problem: Error {
    let message: String
    let code: Int
    let isNetworkProblem: Bool
    
    init(message: String = "unknown_error", code: Int = -1, isNetworkProblem: Bool = false) {
        self.message = message
        self.code = code
        self.isNetworkProblem = isNetworkProblem
    }
}
