//
//  EdgeViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct EdgeViewDecorator: ViewDecorator {
    func decorate(view: UIView, descriptionLabel: UILabel) {

        let palette = ColorPalette(count: 2)

        let container = makeView(EdgeDemoAccessibility.containerView, color: palette.next())
        let nested = makeView(EdgeDemoAccessibility.nestedView, color: palette.next())

        container
            .addToSuperview(view)
            .makePin(to: view)
            .pinCenters()
            .pinWidths(multiplier: 0.25)
            .pinHeights(multiplier: 0.25)
            .activate()

        nested
            .addToSuperview(container)
            .makePin(to: container)
            .pinLeadingEdges(constant: 10)
            .pinTrailingEdges(constant: -10)
            .pinTopEdges(constant: 10)
            .pinBottomEdges(constant: -10)
            .activate()

        descriptionLabel.text = "This demonstrates how the leading, trailing, top, and bottom edges of a primary view can be pinned to the edges of a secondary view. In this example constants are applied to each edge so the nested view is smaller than the containing view."
    }
}
