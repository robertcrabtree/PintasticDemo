//
//  TopAndBottomDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

extension Accessibility {
    static let topAndBottomTopView = "topAndBottomTopView"
    static let topAndBottomCenterView = "topAndBottomCenterView"
    static let topAndBottomBottomView = "topAndBottomBottomView"
}

struct TopAndBottomDemo: Demo {
    func pinViews(to view: UIView) {
        let top = makeView(.topAndBottomTopView, color: .systemOrange)
        let center = makeView(.topAndBottomCenterView, color: .systemGreen)
        let bottom = makeView(.topAndBottomBottomView, color: .systemTeal)

        top
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .heights(multiplier: 0.25)
            .horizontalCenters()
            .activate()

        center
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .heights(multiplier: 0.25)
            .verticalCenters()
            .horizontalCenters()
            .activate()

        bottom
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .heights(multiplier: 0.25)
            .horizontalCenters()
            .activate()

        top
            .pin(to: center)
            .bottomToTopEdge(constant: -10)
            .activate()


        bottom
            .pin(to: center)
            .topToBottomEdge(constant: 10)
            .activate()
    }
}
