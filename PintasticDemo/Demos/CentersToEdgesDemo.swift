//
//  CentersToEdgesDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

extension Accessibility {
    static let centersToEdgesTopLeftView = "centersToEdgesTopLeftView"
    static let centersToEdgesTopRightView = "centersToEdgesTopRightView"
    static let centersToEdgesBottomRightView = "centersToEdgesBottomRightView"
    static let centersToEdgesBottomLeftView = "centersToEdgesBottomLeftView"
    static let centersToEdgesCenterView = "centersToEdgesCenterView"
}

struct CentersToEdgesDemo: Demo {
    func pinViews(to view: UIView) {
        let topLeft = makeView(
            .centersToEdgesTopLeftView,
            color: .systemRed
        )
        let topRight = makeView(
            .centersToEdgesTopRightView,
            color: .systemBlue
        )
        let bottomRight = makeView(
            .centersToEdgesBottomRightView,
            color: .systemGreen
        )
        let bottomLeft = makeView(
            .centersToEdgesBottomLeftView,
            color: .systemYellow
        )
        let center = makeView(
            .centersToEdgesCenterView,
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
