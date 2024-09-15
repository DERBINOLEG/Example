//
//  ViewController.swift
//  exampleApp
//
//  Created by Олег Дербин on 07.09.2024.
//

import UIKit

class ViewController: UIViewController {

    let person = Person()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(person.fullName)
    }
}
