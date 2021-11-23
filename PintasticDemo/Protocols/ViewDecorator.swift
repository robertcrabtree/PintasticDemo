//
//  ViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit

protocol ViewDecorator {
    func decorate(view: UIView)
}

extension ViewDecorator {
    func makeView(_ accessibility: Accessibility, color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.accessibilityIdentifier = accessibility.accessibility
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
