//
//  ViewController.swift
//  exampleApp
//
//  Created by Олег Дербин on 07.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var helper: UserManager?
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
        
        view.addSequenceSubviews(stackView)
        stackView.addSequenceSubview(textLabel, firstButton, secondButton)
        setupConstraints()
        setupStackView()
        setupLabel()
        addAction()
    }
    
    
    
    private func addAndPrintUsers() {
        helper?.getUsers().forEach { print($0.userInfo.fullName) }
    }
    
    @objc
    func firstButtonTapped() {
        textLabel.text = helper?.getUsers().randomElement()?.userInfo.name ?? ""
    }
    
}

//MARK: - Setup View
private extension ViewController {
    
    func addAction() {
        firstButton.addTarget(
            self,
            action: #selector(firstButtonTapped),
            for: .touchUpInside
        )
        
        secondButton.addAction(UIAction { _ in
            self.textLabel.text = ""
        }, for: .touchUpInside)
    }
    
    func setupLabel() {
        let randomUserName = helper?.getUsers().randomElement()?.userInfo.fullName ?? ""
        textLabel.font = .systemFont(ofSize: 25)
        textLabel.textColor = .blue
        textLabel.text = randomUserName
        textLabel.numberOfLines = 0
        textLabel.adjustsFontSizeToFitWidth = true
        textLabel.textAlignment = .center
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 20
    }
}

//MARK: -Setup Layout
extension ViewController {
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

#Preview {
    ViewController()
}

