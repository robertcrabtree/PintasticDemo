//
//  CustomConstraintDemo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import Pintastic
import UIKit

struct CustomConstraintDemo: Demo {
    func pinViews(to view: UIView) {
        let customView = makeView(CustomConstraintDemoAccessibility.view, color: .systemPurple)
        customView
            .addToSuperview(view)
            .pin(to: view)
            .horizontalCenters()
            .verticalCenters()
            .custom(withIdentifier: "width", builder: {
                customView.widthAnchor.constraint(equalToConstant: 50.0)
            })
            .custom(withIdentifier: "height", builder: {
                customView.heightAnchor.constraint(equalToConstant: 50.0)
            })
            .constraint(withIdentifier: "width", handler: { constraint in
                constraint?.constant = 100.0
            })
            .activate()
    }
}
