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
            .pin(to: view.safeAreaLayoutGuide)
            .equalWidths(multiplier: 0.25)
            .horizontalCenters()
            .activate()

        top
            .pin()
            .pinHeightEqualToWidth()
            .activate()

        center
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .equalWidths(multiplier: 0.25)
            .centers()
            .activate()

        center
            .pin()
            .pinHeightEqualToWidth()
            .activate()

        bottom
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .equalWidths(multiplier: 0.25)
            .horizontalCenters()
            .activate()

        bottom
            .pin()
            .pinHeightEqualToWidth()
            .activate()

        top
            .pin(to: center)
            .above(constant: -10)
            .activate()


        bottom
            .pin(to: center)
            .below(constant: 10)
            .activate()

        descriptionLabel.text = "This demonstrates how the bottom edge of a primary view can be pinned to the top edge of a secondary view and how the top edge of a primary view can be pinned to the bottom edge of a secondary view."
    }
}
