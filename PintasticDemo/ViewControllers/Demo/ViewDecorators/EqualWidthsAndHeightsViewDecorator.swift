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
            .makePin(to: view)
            .pinCenters()
            .activate()

        let left = makeView(EqualWidthsAndHeightsDemoAccessibility.leftView, color: palette.next())
        let right = makeView(EqualWidthsAndHeightsDemoAccessibility.rightView, color: palette.next())

        stack.addArrangedSubview(left)
        stack.addArrangedSubview(right)

        left
            .makePin(to: view)
            .pinWidths(multiplier: 0.25)
            .pinHeights(multiplier: 0.25)
            .activate()

        right
            .makePin(to: left)
            .pinWidths()
            .pinHeights()
            .activate()

        descriptionLabel.text = "This demonstrates how the width and height of the primary view can be pinned to the width and height of the secondary view."
    }
}
