//
//  LeadingAndTrailingDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct LeadingAndTrailingDecorator: ViewDecorator {
    func decorateView(_ view: UIView) {
        let left = makeDecorationView(.leadingAndTrailingLeftView, color: .systemOrange)
        let center = makeDecorationView(.leadingAndTrailingCenterView, color: .systemGreen)
        let right = makeDecorationView(.leadingAndTrailingRightView, color: .systemTeal)

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
