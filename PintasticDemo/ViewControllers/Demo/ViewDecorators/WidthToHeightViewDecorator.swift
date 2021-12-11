//
//  WidthToHeightViewDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit
import Pintastic

struct WidthToHeightViewDecorator: ViewDecorator {
    func decorate(view: UIView, descriptionLabel: UILabel) {

        let palette = ColorPalette(count: 2)

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
            .pinCenters()
            .activate()

        let topView = makeView(WidthToHeightDemoAccessibility.leftView, color: palette.next())
        let bottomView = makeView(WidthToHeightDemoAccessibility.rightView, color: palette.next())

        stack.addArrangedSubview(topView)
        stack.addArrangedSubview(bottomView)

        topView
            .pin(to: view)
            .pinWidths(multiplier: 0.25)
            .activate()

        topView
            .pin()
            .pinWidthEqualToHeight(multiplier: 2.0)
            .activate()

        bottomView
            .pin(to: view)
            .pinWidths(multiplier: 0.25)
            .activate()

        bottomView
            .pin()
            .pinHeightEqualToWidth(multiplier: 0.5)
            .activate()

        descriptionLabel.text = "This demonstrates how the width of a view can be pinned to its height and how the height of a view can be pinned to its width. This example applies a multiplier to create proportional dimensions rather than equal dimesnsions."
    }
}
