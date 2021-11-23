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
    func decorate(view: UIView) {

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
            .centers()
            .activate()

        let topView = makeView(WidthToHeightDemoAccessibility.leftView, color: palette.next())
        let bottomView = makeView(WidthToHeightDemoAccessibility.rightView, color: palette.next())

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
