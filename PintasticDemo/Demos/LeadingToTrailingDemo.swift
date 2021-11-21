//
//  LeadingToTrailingDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

extension Accessibility {
    static let leadingToTrailingLeftView = "leadingToTrailingLeftView"
    static let leadingToTrailingCenterView = "leadingToTrailingCenterView"
    static let leadingToTrailingRightView = "leadingToTrailingRightView"
}

struct LeadingToTrailingDemo: Demo {
    func pinViews(to view: UIView) {
        let left = makeView(.leadingToTrailingLeftView, color: .systemOrange)
        let center = makeView(.leadingToTrailingCenterView, color: .systemGreen)
        let right = makeView(.leadingToTrailingRightView, color: .systemTeal)

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
