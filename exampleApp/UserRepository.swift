//
//  UserRepository.swift
//  exampleApp
//
//  Created by Олег Дербин on 18.09.2024.
//

import Foundation

class UserRepository {
    
    func getData() -> [User] {
        var data: [User] = []
        data.append(
            .init(
                login: "DERBIN",
                password: "77777777",
                userInfo: .init(
                    name: "Oleg",
                    surName: "Derbin")
            )
        )
        data.append(
            .init(
                login: "MAX",
                password: "123141",
                userInfo: .init(
                    name: "Maxim",
                    surName: "Batiushev"
                )
            )
        )
        return data
    }
}
