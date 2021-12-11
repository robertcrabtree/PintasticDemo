//
//  HorizontalAndVerticalCenterViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct HorizontalAndVerticalCenterViewDecorator: ViewDecorator {
    func decorate(view: UIView, descriptionLabel: UILabel) {

        let palette = ColorPalette(count: 2)

        let container = makeView(HorizontalAndVerticalCenterDemoAccessibility.containerView, color: palette.next())
        let nested = makeView(HorizontalAndVerticalCenterDemoAccessibility.nestedView, color: palette.next())

        container
            .addToSuperview(view)
            .pin(to: view)
            .pinHorizontalCenters()
            .pinVerticalCenters()
            .pinWidths(multiplier: 0.25)
            .activate()

        container
            .pin()
            .pinHeightEqualToWidth()
            .activate()

        nested
            .addToSuperview(container)
            .pin(to: container)
            .pinWidths(multiplier: 0.25)
            .pinHeights(multiplier: 0.25)
            .pinHorizontalCenters(multiplier: 0.5)
            .pinVerticalCenters(multiplier: 0.5)
            .activate()

        descriptionLabel.text = "This demonstrates how the horizontal and vertical centers of the primary view can be pinned to the horizontal and vertical centers of the secondary view. In this example the nested view applies a multipler to offset the center from containing view."
    }
}
