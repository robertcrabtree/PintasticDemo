//
//  CentersAndEdgesDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct CentersAndEdgesDemo: Demo {
    func pinViews(to view: UIView) {
        let topLeft = makeView(
            .centersAndEdgesTopLeftView,
            color: .systemRed.withAlphaComponent(0.5)
        )
        let topRight = makeView(
            .centersAndEdgesTopRightView,
            color: .systemBlue.withAlphaComponent(0.5)
        )
        let bottomRight = makeView(
            .centersAndEdgesBottomRightView,
            color: .systemGreen.withAlphaComponent(0.5)
        )
        let bottomLeft = makeView(
            .centersAndEdgesBottomLeftView,
            color: .systemYellow.withAlphaComponent(0.5)
        )
        let center = makeView(
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
