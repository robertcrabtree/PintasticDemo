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
            .pin(to: view)
            .centers()
            .equalWidths(multiplier: 0.25)
            .equalHeights(multiplier: 0.25)
            .activate()

        nested
            .addToSuperview(container)
            .pin(to: container)
            .leadingEdges(constant: 10)
            .trailingEdges(constant: -10)
            .topEdges(constant: 10)
            .bottomEdges(constant: -10)
            .activate()

        descriptionLabel.text = "This demonstrates how the leading, trailing, top, and bottom edges of a primary view can be pinned to the edges of a secondary view. In this example constants are applied to each edge so the nested view is smaller than the containing view."
    }
}
