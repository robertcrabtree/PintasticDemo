//
//  EqualWidthsAndHeightsViewBuilder.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct EqualWidthsAndHeightsViewBuilder: ViewBuilder {
    func build(view: UIView) {

        let stack: UIStackView = {
            let stack = UIStackView()
            stack.translatesAutoresizingMaskIntoConstraints = false
            stack.axis = .horizontal
            stack.spacing = 20.0
            return stack
        }()

        stack
            .addToSuperview(view)
            .pin(to: view)
            .verticalCenters()
            .horizontalCenters()
            .activate()

        let left = makeView(EqualWidthsAndHeightsDemoAccessibility.leftView, color: .systemYellow)
        let right = makeView(EqualWidthsAndHeightsDemoAccessibility.rightView, color: .systemPurple)

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