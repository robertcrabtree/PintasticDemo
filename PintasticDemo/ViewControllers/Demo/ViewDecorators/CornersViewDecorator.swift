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
            .pin(to: view)
            .pinWidths(multiplier: 0.25)
            .pinCenters()
            .activate()

        center
            .pin()
            .pinHeightEqualToWidth()
            .activate()

        topLeft
            .addToSuperview(view)
            .pin(to: center)
            .pinWidths()
            .pinHeights()
            .pinAbove()
            .pinToLeft()
            .activate()

        topRight
            .addToSuperview(view)
            .pin(to: center)
            .pinWidths()
            .pinHeights()
            .pinAbove()
            .pinToRight()
            .activate()

        bottomRight
            .addToSuperview(view)
            .pin(to: center)
            .pinWidths()
            .pinHeights()
            .pinBelow()
            .pinToRight()
            .activate()

        bottomLeft
            .addToSuperview(view)
            .pin(to: center)
            .pinWidths()
            .pinHeights()
            .pinBelow()
            .pinToLeft()
            .activate()

        descriptionLabel.text = "This demonstrates how a primary view can be pinned above, below, to the left, and to the rigfht of a secondary view."
    }
}
