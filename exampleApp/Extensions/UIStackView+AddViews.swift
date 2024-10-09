//
//  UIStackView+AddViews.swift
//  exampleApp
//
//  Created by Олег Дербин on 09.10.2024.
//

import UIKit

extension UIStackView {
    func addSequenceSubview(_ views: UIView...) {
        views.forEach { addArrangedSubview($0) }
    }
}
