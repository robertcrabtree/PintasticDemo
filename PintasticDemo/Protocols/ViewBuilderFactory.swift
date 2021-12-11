//
//  ViewDecoratorFactory.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol ViewDecoratorFactory {
    func makeDecorator(identifier: DemoIdentifier) -> ViewDecorator
}

struct DefaultViewDecoratorFactory: ViewDecoratorFactory {
    func makeDecorator(identifier: DemoIdentifier) -> ViewDecorator {
        switch identifier {
        case .edge:
            return EdgeViewDecorator()
        case .topToBottom:
            return TopToBottomViewDecorator()
        case .leadingToTrailing:
            return LeadingToTrailingViewDecorator()
        case .horizontalAndVerticalCenter:
            return HorizontalAndVerticalCenterViewDecorator()
        case .widthToHeight:
            return WidthToHeightViewDecorator()
        case .equalWidthsAndHeights:
            return EqualWidthsAndHeightsViewDecorator()
        case .centersToEdges:
            return CentersToEdgesViewDecorator()
        case .customConstraint:
            return CustomConstraintViewDecorator()
        case .corners:
            return CornersViewDecorator()
        }
    }
}
