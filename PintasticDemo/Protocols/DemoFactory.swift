//
//  DemoFactory.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol DemoFactory {
    func makeDemo(id: DemoIdentifier) -> Demo
}

struct DefaultDemoFactory: DemoFactory {
    func makeDemo(id: DemoIdentifier) -> Demo {
        switch id {
        case .edge:
            return EdgeDemo()
        case .topToBottom:
            return TopToBottomDemo()
        case .leadingToTrailing:
            return LeadingToTrailingDemo()
        case .horizontalAndVerticalCenter:
            return HorizontalAndVerticalCenterDemo()
        case .widthToHeight:
            return WidthToHeightDemo()
        case .equalWidthsAndHeights:
            return EqualWidthsAndHeightsDemo()
        case .centersToEdges:
            return CentersToEdgesDemo()
        }
    }
}
