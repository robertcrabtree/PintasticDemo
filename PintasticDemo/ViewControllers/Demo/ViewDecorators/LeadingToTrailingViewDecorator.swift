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
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .verticalCenters()
            .activate()

        left
            .pin()
            .widthToHeight()
            .activate()

        center
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .centers()
            .activate()

        center
            .pin()
            .widthToHeight()
            .activate()

        right
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .verticalCenters()
            .activate()

        right
            .pin()
            .heightToWidth()
            .activate()

        left
            .pin(to: center)
            .before(constant: -10)
            .activate()

        right
            .pin(to: center)
            .after(constant: 10)
            .activate()

        descriptionLabel.text = "This demonstrates how the trailing edge of a primary view can be pinned to the leading edge of a secondary view and how the leading edge of a primary view can be pinned to the trailing edge of a secondary view."
    }
}
