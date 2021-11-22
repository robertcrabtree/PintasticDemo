//
//  ViewBuilder.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit

protocol ViewBuilder {
    func build(view: UIView)
}

extension ViewBuilder {
    func makeView(_ accessibility: Accessibility, color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.accessibilityIdentifier = accessibility.accessibility
        view.backgroundColor = color.withAlphaComponent(0.5)
        return view
    }
}

extension UIView {
    func addToSuperview(_ superview: UIView) -> UIView {
        superview.addSubview(self)
        return self
    }
}