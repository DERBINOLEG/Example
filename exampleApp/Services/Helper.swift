//
//  Helper.swift
//  exampleApp
//
//  Created by Олег Дербин on 16.09.2024.
//

import Foundation

protocol UserManager {
    func getUsers() -> [User]
    func getUsersData(usersData: [User])
}

class Helper: UserManager {

    private var users: [User] = []
    
    
    func getUsers() -> [User] {
        users
    }
    
    func getUsersData(usersData: [User]) {
        usersData.forEach { users.append($0) }
    }
}
