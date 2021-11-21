//
//  EdgeDecorator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct EdgeDecorator: ViewDecorator {
    func decorateView(_ view: UIView) {
        makeDecorationView(.edgeDemoChildView, color: .systemOrange)
            .addToSuperview(view)
            .pin(to: view.safeAreaLayoutGuide)
            .leadingEdges(constant: 20)
            .trailingEdges(constant: -20)
            .topEdges(constant: 20)
            .bottomEdges(constant: -20)
            .activate()
    }
}
