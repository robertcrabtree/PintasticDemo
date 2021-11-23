//
//  LeadingToTrailingViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct LeadingToTrailingViewDecorator: ViewDecorator {
    func decorate(view: UIView) {
        let left = makeView(LeadingToTrailingDemoAccessibility.leftView, color: Colors.next())
        let center = makeView(LeadingToTrailingDemoAccessibility.centerView, color: Colors.next())
        let right = makeView(LeadingToTrailingDemoAccessibility.rightView, color: Colors.next())

        left
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .widthToHeight()
            .verticalCenters()
            .activate()

        center
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .widthToHeight()
            .verticalCenters()
            .horizontalCenters()
            .activate()

        right
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .widths(multiplier: 0.25)
            .heightToWidth()
            .verticalCenters()
            .activate()

        left
            .pin(to: center)
            .trailingToLeadingEdge(constant: -10)
            .activate()

        right
            .pin(to: center)
            .leadingToTrailingEdge(constant: 10)
            .activate()
    }
}
