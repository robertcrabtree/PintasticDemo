//
//  EqualWidthsAndHeightsViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct EqualWidthsAndHeightsViewDecorator: ViewDecorator {
    func decorate(view: UIView, descriptionLabel: UILabel) {

        let palette = ColorPalette(count: 2)

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
            .centers()
            .activate()

        let left = makeView(EqualWidthsAndHeightsDemoAccessibility.leftView, color: palette.next())
        let right = makeView(EqualWidthsAndHeightsDemoAccessibility.rightView, color: palette.next())

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

        descriptionLabel.text = "This demonstrates how the width and height of the primary view can be pinned to the width and height of the secondary view."
    }
}
