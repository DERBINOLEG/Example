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
    private let textLabel = UILabel()
    private let myButton: UIButton = {
        $0.setTitle("Show FullName", for: .normal)
        $0.backgroundColor = .green
        $0.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return $0
    }(UIButton())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red.withAlphaComponent(0.3)
        addAndPrintUsers()
        
        setupLabel()
        view.addSubview(textLabel)
        view.addSubview(myButton)
    }
    
    
    
    private func addAndPrintUsers() {
        helper.getUsersData(usersData: repository)
        helper.getUsers().forEach { print($0.userInfo.fullName) }
    }
    
    private func setupLabel() {
        let randomUserName = helper.getUsers().randomElement()?.userInfo.fullName ?? ""
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
        textLabel.text = randomUserName
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
    
}

#Preview {
    ViewController()
}

