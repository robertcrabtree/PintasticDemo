//
//  Demo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit

protocol Demo {
    func pinViews(to view: UIView)
}

extension Demo {
    func makeView(_ identifier: Accessibility, color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.accessibilityIdentifier = identifier
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
