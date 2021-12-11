//
//  CornersViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 12/11/21.
//

import Foundation
import Pintastic
import UIKit

struct CornersViewDecorator: ViewDecorator {
    func decorate(view: UIView, descriptionLabel: UILabel) {

        let palette = ColorPalette(count: 5)

        let center = makeView(CornersDemoAccessibility.centerView, color: palette.next())
        let topLeft = makeView(CornersDemoAccessibility.topLeftView, color: palette.next())
        let topRight = makeView(CornersDemoAccessibility.topRightView, color: palette.next())
        let bottomRight = makeView(CornersDemoAccessibility.bottomRightView, color: palette.next())
        let bottomLeft = makeView(CornersDemoAccessibility.bottomLeftView, color: palette.next())

        center
            .addToSuperview(view)
            .makePin(to: view)
            .pinWidths(multiplier: 0.25)
            .pinCenters()
            .activate()

        center
            .makePin()
            .pinHeightEqualToWidth()
            .activate()

        topLeft
            .addToSuperview(view)
            .makePin(to: center)
            .pinWidths()
            .pinHeights()
            .pinAbove()
            .pinBefore()
            .activate()

        topRight
            .addToSuperview(view)
            .makePin(to: center)
            .pinWidths()
            .pinHeights()
            .pinAbove()
            .pinAfter()
            .activate()

        bottomRight
            .addToSuperview(view)
            .makePin(to: center)
            .pinWidths()
            .pinHeights()
            .pinBelow()
            .pinAfter()
            .activate()

        bottomLeft
            .addToSuperview(view)
            .makePin(to: center)
            .pinWidths()
            .pinHeights()
            .pinBelow()
            .pinBefore()
            .activate()

        descriptionLabel.text = "This demonstrates how a primary view can be pinned above, below, to the left, and to the rigfht of a secondary view."
    }
}
