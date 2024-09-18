//
//  ViewController.swift
//  exampleApp
//
//  Created by Олег Дербин on 07.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let repository = UserRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.alpha = 0.1
        addAndPrintUsers()
    }
    
    
    
    private func addAndPrintUsers() {
        helper.getUsersData(usersData: repository)
        helper.users.forEach { print($0.userInfo.fullName) }
    }
}

