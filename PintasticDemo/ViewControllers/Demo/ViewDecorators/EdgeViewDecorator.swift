//
//  EdgeViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct EdgeViewDecorator: ViewDecorator {
    func decorate(view: UIView) {
        let palette = ColorPalette(count: 1)

        makeView(EdgeDemoAccessibility.childView, color: palette.next())
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .leadingEdges(constant: 20)
            .trailingEdges(constant: -20)
            .topEdges(constant: 20)
            .bottomEdges(constant: -20)
            .activate()
    }
}
