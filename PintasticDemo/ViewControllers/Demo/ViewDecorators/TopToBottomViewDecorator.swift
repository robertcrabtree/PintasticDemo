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
    func decorate(view: UIView, descriptionLabel: UILabel) {
        let palette = ColorPalette(count: 3)

        let top = makeView(TopToBottomDemoAccessibility.topView, color: palette.next())
        let center = makeView(TopToBottomDemoAccessibility.centerView, color: palette.next())
        let bottom = makeView(TopToBottomDemoAccessibility.bottomView, color: palette.next())

        top
            .addToSuperview(view)
            .makePin(to: view.safeAreaLayoutGuide)
            .pinWidths(multiplier: 0.25)
            .pinHorizontalCenters()
            .activate()

        top
            .makePin()
            .pinHeightEqualToWidth()
            .activate()

        center
            .addToSuperview(view)
            .makePin(to: view.safeAreaLayoutGuide)
            .pinWidths(multiplier: 0.25)
            .pinCenters()
            .activate()

        center
            .makePin()
            .pinHeightEqualToWidth()
            .activate()

        bottom
            .addToSuperview(view)
            .makePin(to: view.safeAreaLayoutGuide)
            .pinWidths(multiplier: 0.25)
            .pinHorizontalCenters()
            .activate()

        bottom
            .makePin()
            .pinHeightEqualToWidth()
            .activate()

        top
            .makePin(to: center)
            .pinAbove(constant: -10)
            .activate()


        bottom
            .makePin(to: center)
            .pinBelow(constant: 10)
            .activate()

        descriptionLabel.text = "This demonstrates how the bottom edge of a primary view can be pinned to the top edge of a secondary view and how the top edge of a primary view can be pinned to the bottom edge of a secondary view."
    }
}
