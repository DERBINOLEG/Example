//
//  Helper.swift
//  exampleApp
//
//  Created by Олег Дербин on 16.09.2024.
//

import Foundation

class Helper {

    var users: [User] = []
    
    func addUser(_ user: User) {
        users.append(user)
    }
    
    func getUsers() -> [User] {
        users
    }
    
    func getUsersData(usersData: UserRepository) {
        usersData.getData().forEach { users.append($0) }
    }
}
