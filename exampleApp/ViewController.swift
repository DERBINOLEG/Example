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
    private let firstButton = CustomButton(
        title: "Show New User",
        color: .red,
        isShadow: false
    )
    private let secondButton = CustomButton(
        title: "Hide User",
        color: .green,
        isShadow: true
    )
    private let stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red.withAlphaComponent(0.3)
        addAndPrintUsers()
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(firstButton)
        stackView.addArrangedSubview(secondButton)
        setupConstraints()
        setupStackView()
        setupLabel()
        
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
        textLabel.numberOfLines = 0
        textLabel.adjustsFontSizeToFitWidth = true
        textLabel.textAlignment = .center
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 10
    }
    
    private func setupConstraints() {
        let size = view.widthAnchor
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.heightAnchor.constraint(equalTo: size, multiplier: 0.5),
            stackView.widthAnchor.constraint(equalTo: stackView.heightAnchor)
        ])
    }
    
}

#Preview {
    ViewController()
}

