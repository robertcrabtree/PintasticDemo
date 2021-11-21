//
//  CentersAndEdgesDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct CentersAndEdgesDecorator: ViewDecorator {
    func decorateView(_ view: UIView) {
        let topLeft = makeDecorationView(
            .centersAndEdgesTopLeftView,
            color: .systemRed.withAlphaComponent(0.5)
        )
        let topRight = makeDecorationView(
            .centersAndEdgesTopRightView,
            color: .systemBlue.withAlphaComponent(0.5)
        )
        let bottomRight = makeDecorationView(
            .centersAndEdgesBottomRightView,
            color: .systemGreen.withAlphaComponent(0.5)
        )
        let bottomLeft = makeDecorationView(
            .centersAndEdgesBottomLeftView,
            color: .systemYellow.withAlphaComponent(0.5)
        )
        let center = makeDecorationView(
            .centersAndEdgesCenterView,
            color: .clear
        )

        topLeft
            .addToSuperview(view)
            .pin(to: view)
            .equalWidths(multiplier: 0.25)
            .sameWidthAndHeight()
            .activate()

        topRight
            .addToSuperview(view)
            .pin(to: topLeft)
            .equalWidths()
            .equalHeights()
            .leadingEdgeToCenter()
            .topEdges()
            .activate()

        bottomRight
            .addToSuperview(view)
            .pin(to: topRight)
            .equalWidths()
            .equalHeights()
            .leadingEdges()
            .topEdgeToCenter()
            .activate()

        bottomLeft
            .addToSuperview(view)
            .pin(to: bottomRight)
            .equalWidths()
            .equalHeights()
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
            .equalWidths(multiplier: 0.5)
            .equalHeights(multiplier: 0.5)
            .leadingEdgeToCenter()
            .topEdgeToCenter()
            .activate()
    }
}
