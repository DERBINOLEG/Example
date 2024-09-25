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
    private let myButton = UIButton()
    private let stackView = UIStackView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red.withAlphaComponent(0.3)
        addAndPrintUsers()
        
        view.addSubview(stackView)
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(myButton)
        setupConstraints()
        setupStackView()
        setupLabel()
        setupButton()
        
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
    
    private func setupButton() {
        myButton.setTitle("Show FullName", for: .normal)
        myButton.backgroundColor = .green
        myButton.setTitleColor(.black, for: .normal)
        myButton.layer.cornerRadius = 15
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
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

