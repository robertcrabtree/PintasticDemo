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
        makeDecorationView(.horizontalAndVerticalCenterView, color: .systemPink)
            .addToSuperview(view)
            .pin(to: view)
            .horizontalCenters(multiplier: 0.5)
            .verticalCenters(multiplier: 0.5)
            .width(to: 40)
            .height(to: 40)
            .activate()
    }
}
