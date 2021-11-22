//
//  DemoIdentifierToTitleTranslator.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

enum DemoIdentifierToTitleTranslator {
    static func titleFor(id: DemoIdentifier) -> String {
        switch id {
        case .edge:
            return "Edges"
        case .widthToHeight:
            return "Width to Height"
        case .centersToEdges:
            return "Centers to Edges"
        case .topToBottom:
            return "Top to Bottom"
        case .leadingToTrailing:
            return "Leading to Trailing"
        case .horizontalAndVerticalCenter:
            return "Horizontal and Vertical Center"
        case .equalWidthsAndHeights:
            return "Equal Widths and Heights"
        case .customConstraint:
            return "Custom Constraint"
        }
    }
}
