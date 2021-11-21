//
//  SameWidthAndHeightDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

import Foundation
import UIKit
import Pintastic

struct SameWidthAndHeightDecorator: ViewDecorator {
    func decorateView(_ view: UIView) {
        makeDecorationView(.sameWidthAndHeightLeftView, color: .systemPurple)
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .topEdges(constant: 20)
            .horizontalCenters()
            .equalWidths(multiplier: 0.25)
            .sameWidthAndHeight(multiplier: 2.0)
            .activate()
        makeDecorationView(.sameWidthAndHeightRightView, color: .systemCyan)
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .bottomEdges(constant: -20)
            .horizontalCenters()
            .equalWidths(multiplier: 0.25)
            .sameHeightAndWidth(multiplier: 0.5)
            .activate()
    }
}
