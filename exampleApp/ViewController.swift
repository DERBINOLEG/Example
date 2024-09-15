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
        updateNumbers()
    }
    
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        helper.getNumbers().forEach { print($0) }
    }
}
