//
//  CustomConstraintViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct CustomConstraintViewDecorator: ViewDecorator {
    func decorate(view: UIView, descriptionLabel: UILabel) {
        let palette = ColorPalette(count: 1)

        let customView = makeView(CustomConstraintDemoAccessibility.childView, color: palette.next())
        customView
            .addToSuperview(view)
            .makePin(to: view)
            .pinCenters()
            .addConstraint(withIdentifier: "width", constraint: {
                customView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25)
            })
            .addConstraint(withIdentifier: "height", constraint: {
                customView.heightAnchor.constraint(equalTo: customView.widthAnchor)
            })
            .activate()

        descriptionLabel.text = "This demonstrates how custom constraints can be applied to a view. In this example the width and height of the primary view are configured using custom constraints."
    }
}
