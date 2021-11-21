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
        case .topAndBottom:
            return TopAndBottomDemo()
        case .leadingAndTrailing:
            return LeadingAndTrailingDemo()
        case .horizontalAndVerticalCenter:
            return HorizontalAndVerticalCenterDemo()
        case .widthToHeight:
            return SameWidthAndHeightDemo()
        case .equalWidthAndHeight:
            return EqualWidthAndHeightDemo()
        case .centersAndEdges:
            return CentersAndEdgesDemo()
        }
    }
}
