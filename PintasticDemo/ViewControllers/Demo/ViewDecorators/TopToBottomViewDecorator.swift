//
//  TopToBottomViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct TopToBottomViewDecorator: ViewDecorator {
    func decorate(view: UIView) {
        let top = makeView(TopToBottomDemoAccessibility.topView, color: Colors.next())
        let center = makeView(TopToBottomDemoAccessibility.centerView, color: Colors.next())
        let bottom = makeView(TopToBottomDemoAccessibility.bottomView, color: Colors.next())

        top
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .heightToWidth()
            .horizontalCenters()
            .activate()

        center
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .heightToWidth()
            .verticalCenters()
            .horizontalCenters()
            .activate()

        bottom
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .heightToWidth()
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
