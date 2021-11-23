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
        let palette = ColorPalette(count: 3)

        let top = makeView(TopToBottomDemoAccessibility.topView, color: palette.next())
        let center = makeView(TopToBottomDemoAccessibility.centerView, color: palette.next())
        let bottom = makeView(TopToBottomDemoAccessibility.bottomView, color: palette.next())

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
            .centers()
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
