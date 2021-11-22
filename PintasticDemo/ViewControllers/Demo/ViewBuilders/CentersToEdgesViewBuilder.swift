//
//  CentersToEdgesViewBuilder.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct CentersToEdgesViewBuilder: ViewBuilder {

    func build(view: UIView) {
        let topLeft = makeView(
            CentersToEdgesDemoAccessibility.topLeftView,
            color: .systemRed
        )
        let topRight = makeView(
            CentersToEdgesDemoAccessibility.topRightView,
            color: .systemBlue
        )
        let bottomRight = makeView(
            CentersToEdgesDemoAccessibility.bottomRightView,
            color: .systemGreen
        )
        let bottomLeft = makeView(
            CentersToEdgesDemoAccessibility.bottomLeftView,
            color: .systemYellow
        )
        let center = makeView(
            CentersToEdgesDemoAccessibility.centerView,
            color: .systemBrown
        )

        topLeft
            .addToSuperview(view)
            .pin(to: view)
            .widths(multiplier: 0.25)
            .widthToHeight()
            .activate()

        topRight
            .addToSuperview(view)
            .pin(to: topLeft)
            .widths()
            .heights()
            .leadingEdgeToCenter()
            .topEdges()
            .activate()

        bottomRight
            .addToSuperview(view)
            .pin(to: topRight)
            .widths()
            .heights()
            .leadingEdges()
            .topEdgeToCenter()
            .activate()

        bottomLeft
            .addToSuperview(view)
            .pin(to: bottomRight)
            .widths()
            .heights()
            .trailingEdgeToCenter()
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
            .leadingEdgeToCenter()
            .topEdgeToCenter()
            .activate()
    }
}
