//
//  HorizontalAndVerticalCenterViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct HorizontalAndVerticalCenterViewDecorator: ViewDecorator {
    func decorate(view: UIView) {

        let palette = ColorPalette(count: 2)

        let container = makeView(HorizontalAndVerticalCenterDemoAccessibility.containerView, color: palette.next())
        let nested = makeView(HorizontalAndVerticalCenterDemoAccessibility.nestedView, color: palette.next())

        container
            .addToSuperview(view)
            .pin(to: view)
            .horizontalCenters()
            .verticalCenters()
            .widths(multiplier: 0.25)
            .heightToWidth()
            .activate()

        nested
            .addToSuperview(container)
            .pin(to: container)
            .widths(multiplier: 0.25)
            .heights(multiplier: 0.25)
            .horizontalCenters(multiplier: 0.5)
            .verticalCenters(multiplier: 0.5)
            .activate()
    }
}
