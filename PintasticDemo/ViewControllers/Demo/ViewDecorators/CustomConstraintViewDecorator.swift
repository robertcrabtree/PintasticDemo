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
    func decorate(view: UIView) {
        let palette = ColorPalette(count: 1)

        let customView = makeView(CustomConstraintDemoAccessibility.childView, color: palette.next())
        customView
            .addToSuperview(view)
            .pin(to: view)
            .centers()
            .custom(withIdentifier: "width", builder: {
                customView.widthAnchor.constraint(equalToConstant: 50.0)
            })
            .custom(withIdentifier: "height", builder: {
                customView.heightAnchor.constraint(equalToConstant: 50.0)
            })
            .activate()
    }
}
