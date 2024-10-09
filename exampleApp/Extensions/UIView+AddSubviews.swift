//
//  UIView+AddSubviews.swift
//  exampleApp
//
//  Created by Олег Дербин on 09.10.2024.
//

import UIKit

extension UIView {
    func addSequenceSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
