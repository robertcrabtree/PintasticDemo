//
//  DemoViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit

protocol DemoViewDecorator {
    func decorateView(_ view: UIView)
}

extension DemoViewDecorator {
    func makeDecorationView(_ identifier: Accessibility, color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.accessibilityIdentifier = identifier.rawValue
        view.backgroundColor = color
        return view
    }
}

extension UIView {
    func addToSuperview(_ superview: UIView) -> UIView {
        superview.addSubview(self)
        return self
    }
}
