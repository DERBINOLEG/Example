//
//  CustomButton.swift
//  exampleApp
//
//  Created by Олег Дербин on 08.10.2024.
//

import UIKit

class CustomButton: UIButton {
    
    init(title: String, color: UIColor, isShadow: Bool) {
        super.init(frame: .zero)
        setupButton(title, color, isShadow)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton(_ title: String, _ color: UIColor, _ isShadow: Bool) {
        setTitle(title, for: .normal)
        backgroundColor = color
        setTitleColor(.black, for: .normal)
        layer.cornerRadius = 15
        
        if isShadow {
            layer.shadowOpacity = 0.7
            layer.shadowOffset = CGSize(width: 5, height: 5)
        }
    }
}
