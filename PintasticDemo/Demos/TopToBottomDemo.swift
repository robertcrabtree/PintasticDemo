//
//  TopToBottomDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct TopToBottomDemo: Demo {
    func pinViews(to view: UIView) {
        let top = makeView(TopToBottomDemoAccessibility.topView, color: .systemOrange)
        let center = makeView(TopToBottomDemoAccessibility.centerView, color: .systemGreen)
        let bottom = makeView(TopToBottomDemoAccessibility.bottomView, color: .systemTeal)

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
