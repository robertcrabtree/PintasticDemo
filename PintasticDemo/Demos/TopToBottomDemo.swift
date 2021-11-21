//
//  TopToBottomDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

extension Accessibility {
    static let topToBottomTopView = "topToBottomTopView"
    static let topToBottomCenterView = "topToBottomCenterView"
    static let topToBottomBottomView = "topToBottomBottomView"
}

struct TopToBottomDemo: Demo {
    func pinViews(to view: UIView) {
        let top = makeView(.topToBottomTopView, color: .systemOrange)
        let center = makeView(.topToBottomCenterView, color: .systemGreen)
        let bottom = makeView(.topToBottomBottomView, color: .systemTeal)

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
