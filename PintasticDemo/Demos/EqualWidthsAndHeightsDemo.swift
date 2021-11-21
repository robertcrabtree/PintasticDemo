//
//  EqualWidthsAndHeightsDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

extension Accessibility {
    static let equalWidthsAndHeightsLeftView = "equalWidthsAndHeightsLeftView"
    static let equalWidthsAndHeightsRightView = "equalWidthsAndHeightsRightView"
}

struct EqualWidthsAndHeightsDemo: Demo {
    func pinViews(to view: UIView) {

        let stack: UIStackView = {
            let stack = UIStackView()
            stack.translatesAutoresizingMaskIntoConstraints = false
            stack.axis = .horizontal
            return stack
        }()

        stack
            .addToSuperview(view)
            .pin(to: view)
            .verticalCenters()
            .horizontalCenters()
            .activate()

        let left = makeView(.equalWidthsAndHeightsLeftView, color: .systemYellow)
        let right = makeView(.equalWidthsAndHeightsRightView, color: .systemPurple)

        stack.addArrangedSubview(left)
        stack.addArrangedSubview(right)

        left
            .pin(to: view)
            .widths(multiplier: 0.25)
            .heights(multiplier: 0.25)
            .activate()

        right
            .pin(to: left)
            .widths()
            .heights()
            .activate()
    }
}
