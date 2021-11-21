//
//  HorizontalAndVerticalCenterDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

extension Accessibility {
    static let horizontalAndVerticalContainerView = "horizontalAndVerticalContainerView"
    static let horizontalAndVerticalNestedView = "horizontalAndVerticalNestedView"
}

struct HorizontalAndVerticalCenterDemo: Demo {
    func pinViews(to view: UIView) {
        let container = makeView(.horizontalAndVerticalContainerView, color: .systemPink)
        let nested = makeView(.horizontalAndVerticalNestedView, color: .systemPurple)

        container
            .addToSuperview(view)
            .pin(to: view)
            .horizontalCenters()
            .verticalCenters()
            .widths(multiplier: 0.25)
            .heightToWidth()
            .activate()

        nested
            .addToSuperview(container)
            .pin(to: container)
            .widths(multiplier: 0.25)
            .heights(multiplier: 0.25)
            .horizontalCenters(multiplier: 0.5)
            .verticalCenters(multiplier: 0.5)
            .activate()
    }
}