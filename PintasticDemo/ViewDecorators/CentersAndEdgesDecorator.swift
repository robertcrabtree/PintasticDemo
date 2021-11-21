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
