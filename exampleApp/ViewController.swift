//
//  ViewController.swift
//  exampleApp
//
//  Created by Олег Дербин on 07.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAndPrintUsers()
    }
    
    
    
    private func addAndPrintUsers() {
        helper.addUser(
            User(
                login: "DERBIN",
                password: "77777777",
                userInfo: .init(
                    name: "Oleg",
                    surName: "Derbin"
                )
            )
        )
        
        helper.addUser(
            .init(
                login: "MAX",
                password: "123141",
                userInfo: .init(
                    name: "Maxim",
                    surName: "Batiushev"
                )
            )
        )
        
        helper.getUsers().forEach { print($0.userInfo.fullName) }
    }
}
