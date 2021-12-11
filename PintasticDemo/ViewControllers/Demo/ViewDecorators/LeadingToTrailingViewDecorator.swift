//
//  LeadingToTrailingViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct LeadingToTrailingViewDecorator: ViewDecorator {
    func decorate(view: UIView, descriptionLabel: UILabel) {
        let palette = ColorPalette(count: 3)

        let left = makeView(LeadingToTrailingDemoAccessibility.leftView, color: palette.next())
        let center = makeView(LeadingToTrailingDemoAccessibility.centerView, color: palette.next())
        let right = makeView(LeadingToTrailingDemoAccessibility.rightView, color: palette.next())

        left
            .addToSuperview(view)
            .makePin(to: view.safeAreaLayoutGuide)
            .pinWidths(multiplier: 0.25)
            .pinVerticalCenters()
            .activate()

        left
            .makePin()
            .pinWidthEqualToHeight()
            .activate()

        center
            .addToSuperview(view)
            .makePin(to: view.safeAreaLayoutGuide)
            .pinWidths(multiplier: 0.25)
            .pinCenters()
            .activate()

        center
            .makePin()
            .pinWidthEqualToHeight()
            .activate()

        right
            .addToSuperview(view)
            .makePin(to: view.safeAreaLayoutGuide)
            .pinWidths(multiplier: 0.25)
            .pinVerticalCenters()
            .activate()

        right
            .makePin()
            .pinHeightEqualToWidth()
            .activate()

        left
            .makePin(to: center)
            .pinToLeft(constant: -10)
            .activate()

        right
            .makePin(to: center)
            .pinToRight(constant: 10)
            .activate()

        descriptionLabel.text = "This demonstrates how the trailing edge of a primary view can be pinned to the leading edge of a secondary view and how the leading edge of a primary view can be pinned to the trailing edge of a secondary view."
    }
}
