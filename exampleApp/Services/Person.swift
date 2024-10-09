//
//  Person.swift
//  exampleApp
//
//  Created by Олег Дербин on 16.09.2024.
//

import Foundation

struct Person {
    
    let name: String
    let surName: String
    var fullName: String {
        "\(name) \(surName)"
    }
    
}


