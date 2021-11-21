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
    case topAndBottom
    case leadingAndTrailing
    case horizontalAndVerticalCenter
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
