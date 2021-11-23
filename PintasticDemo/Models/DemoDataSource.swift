//
//  DemoDataSource.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol DemoDataSource {
    var count: Int { get }
    subscript(index: Int) -> Demo { get }
    subscript(identifier: DemoIdentifier) -> Demo? { get }
}

class DefaultDemoDataSource: DemoDataSource {

    let demos: [Demo] = {
        DemoIdentifier.allCases.map {
            Demo(identifier: $0, title: $0.title)
        }
    }()

    var count: Int { demos.count }

    subscript(index: Int) -> Demo {
        demos[index]
    }

    subscript(identifier: DemoIdentifier) -> Demo? {
        demos.first(where: { $0.identifier == identifier })
    }
}

private extension DemoIdentifier {
    var title: String {
        switch self {
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
