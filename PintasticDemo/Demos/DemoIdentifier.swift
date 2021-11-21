//
//  DemoIdentifier.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation
import UIKit

enum DemoIdentifier: String, CaseIterable {
    case edge
    case topToBottom
    case leadingToTrailing
    case horizontalAndVerticalCenter
    case widthToHeight
    case equalWidthsAndHeights
    case centersToEdges
    case customConstraint
}

extension DemoIdentifier {
    var accessibility: String {
        "accessibility." + rawValue
    }

    var title: String {
        rawValue
            .replacingOccurrences(
                of: "([A-Z])",
                with: " $1",
                options: .regularExpression,
                range: rawValue.range(of: rawValue)
            )
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .capitalized
    }
}
