//
//  CentersToEdgesViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct CentersToEdgesViewDecorator: ViewDecorator {

    func decorate(view: UIView, descriptionLabel: UILabel) {

        let palette = ColorPalette(count: 4)

        let topLeft = makeView(
            CentersToEdgesDemoAccessibility.topLeftView,
            color: palette.next()
        )
        let topRight = makeView(
            CentersToEdgesDemoAccessibility.topRightView,
            color: palette.next()
        )
        let bottomRight = makeView(
            CentersToEdgesDemoAccessibility.bottomRightView,
            color: palette.next()
        )
        let bottomLeft = makeView(
            CentersToEdgesDemoAccessibility.bottomLeftView,
            color: palette.next()
        )
        let center = makeView(
            CentersToEdgesDemoAccessibility.centerView,
            color: .clear
        )

        topLeft
            .addToSuperview(view)
            .pin(to: view)
            .equalWidths(multiplier: 0.25 * 2.0 / 3.0)
            .activate()

        topLeft
            .pin()
            .pinWidthEqualToHeight()
            .activate()

        topRight
            .addToSuperview(view)
            .pin(to: topLeft)
            .equalWidths()
            .equalHeights()
            .leadingEdgeToHorizontalCenter()
            .topEdges()
            .activate()

        bottomRight
            .addToSuperview(view)
            .pin(to: topRight)
            .equalWidths()
            .equalHeights()
            .leadingEdges()
            .topEdgeToVerticalCenter()
            .activate()

        bottomLeft
            .addToSuperview(view)
            .pin(to: bottomRight)
            .equalWidths()
            .equalHeights()
            .trailingEdgeToHorizontalCenter()
            .bottomEdges()
            .activate()

        center
            .addToSuperview(view)
            .pin(to: view)
            .horizontalCenters()
            .verticalCenters()
            .activate()

        center
            .pin(to: topLeft)
            .equalWidths(multiplier: 0.5)
            .equalHeights(multiplier: 0.5)
            .leadingEdgeToHorizontalCenter()
            .topEdgeToVerticalCenter()
            .activate()

        descriptionLabel.text = "This demonstrates how the leading, trailing, top, and bottom edges of a primary view can be pinned to the center of a secondary view."
    }
}
