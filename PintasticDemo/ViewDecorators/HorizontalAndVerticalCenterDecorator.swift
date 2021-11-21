//
//  HorizontalAndVerticalCenterDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct HorizontalAndVerticalCenterDecorator: ViewDecorator {
    func decorateView(_ view: UIView) {
        let container = makeDecorationView(.horizontalAndVerticalContainerView, color: .systemPink)
        let nested = makeDecorationView(.horizontalAndVerticalNestedView, color: .systemPurple)

        container
            .addToSuperview(view)
            .pin(to: view)
            .horizontalCenters()
            .verticalCenters()
            .equalWidths(multiplier: 0.25)
            .sameHeightAndWidth()
            .activate()

        nested
            .addToSuperview(container)
            .pin(to: container)
            .equalWidths(multiplier: 0.25)
            .equalHeights(multiplier: 0.25)
            .horizontalCenters(multiplier: 0.5)
            .verticalCenters(multiplier: 0.5)
            .activate()
    }
}
