//
//  Helper.swift
//  exampleApp
//
//  Created by Олег Дербин on 16.09.2024.
//

import Foundation

class Helper {

    private var users: [User] = []
    
    func addUser(_ user: User) {
        users.append(user)
    }
    
    func getUsers() -> [User] {
        users
    }
}
