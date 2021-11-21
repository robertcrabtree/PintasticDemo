//
//  LeadingAndTrailingDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

extension Accessibility {
    static let leadingAndTrailingLeftView = "leadingAndTrailingLeftView"
    static let leadingAndTrailingCenterView = "leadingAndTrailingCenterView"
    static let leadingAndTrailingRightView = "leadingAndTrailingRightView"
}

struct LeadingAndTrailingDemo: Demo {
    func pinViews(to view: UIView) {
        let left = makeView(.leadingAndTrailingLeftView, color: .systemOrange)
        let center = makeView(.leadingAndTrailingCenterView, color: .systemGreen)
        let right = makeView(.leadingAndTrailingRightView, color: .systemTeal)

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
