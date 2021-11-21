//
//  TopAndBottomDemoViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct TopAndBottomDemoViewDecorator: DemoViewDecorator {
    func decorateView(_ view: UIView) {
        let top = makeDecorationView(.topAndBottomTopView, color: .systemOrange)
        let center = makeDecorationView(.topAndBottomCenterView, color: .systemGreen)
        let bottom = makeDecorationView(.topAndBottomBottomView, color: .systemTeal)

        top
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .equalWidths(multiplier: 0.25)
            .equalHeights(multiplier: 0.25)
            .horizontalCenters()
            .activate()

        center
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .equalWidths(multiplier: 0.25)
            .equalHeights(multiplier: 0.25)
            .verticalCenters()
            .horizontalCenters()
            .activate()

        bottom
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .equalWidths(multiplier: 0.25)
            .equalHeights(multiplier: 0.25)
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
