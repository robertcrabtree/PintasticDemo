//
//  SameWidthAndHeightDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct SameWidthAndHeightDemo: Demo {
    func pinViews(to view: UIView) {
        makeView(.widthToHeightLeftView, color: .systemPurple)
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .topEdges(constant: 20)
            .horizontalCenters()
            .widths(multiplier: 0.25)
            .widthToHeight(multiplier: 2.0)
            .activate()
        makeView(.widthToHeightRightView, color: .systemCyan)
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .bottomEdges(constant: -20)
            .horizontalCenters()
            .widths(multiplier: 0.25)
            .heightToWidth(multiplier: 0.5)
            .activate()
    }
}
