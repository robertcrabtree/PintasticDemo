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
            .widths(multiplier: 0.25 * 2.0 / 3.0)
            .widthToHeight()
            .activate()

        topRight
            .addToSuperview(view)
            .pin(to: topLeft)
            .widths()
            .heights()
            .leadingToHorizontalCenter()
            .topEdges()
            .activate()

        bottomRight
            .addToSuperview(view)
            .pin(to: topRight)
            .widths()
            .heights()
            .leadingEdges()
            .topToVerticalCenter()
            .activate()

        bottomLeft
            .addToSuperview(view)
            .pin(to: bottomRight)
            .widths()
            .heights()
            .trailingToHorizontalCenter()
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
            .widths(multiplier: 0.5)
            .heights(multiplier: 0.5)
            .leadingToHorizontalCenter()
            .topToVerticalCenter()
            .activate()

        descriptionLabel.text = "This demonstrates how the leading, trailing, top, and bottom edges of a primary view can be pinned to the center of a secondary view."
    }
}
