//
//  ViewController.swift
//  exampleApp
//
//  Created by Олег Дербин on 07.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let name = "Oleg"
    private let surName = "Derbin"
    private var fullName: String {
        return "\(name) \(surName)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(fullName)
    }
}

