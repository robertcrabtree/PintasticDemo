//
//  WidthToHeightDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

extension Accessibility {
    static let widthToHeightLeftView = "widthToHeightLeftView"
    static let widthToHeightRightView = "widthToHeightRightView"
}

struct WidthToHeightDemo: Demo {
    func pinViews(to view: UIView) {

        let stack: UIStackView = {
            let stack = UIStackView()
            stack.translatesAutoresizingMaskIntoConstraints = false
            stack.axis = .vertical
            stack.spacing = 20.0
            return stack
        }()

        stack
            .addToSuperview(view)
            .pin(to: view)
            .verticalCenters()
            .horizontalCenters()
            .activate()

        let topView = makeView(.widthToHeightLeftView, color: .systemPurple)
        let bottomView = makeView(.widthToHeightRightView, color: .systemCyan)

        stack.addArrangedSubview(topView)
        stack.addArrangedSubview(bottomView)

        topView
            .pin(to: view)
            .widths(multiplier: 0.25)
            .widthToHeight(multiplier: 2.0)
            .activate()

        bottomView
            .pin(to: view)
            .widths(multiplier: 0.25)
            .heightToWidth(multiplier: 0.5)
            .activate()
    }
}
