//
//  ViewBuilderFactory.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol ViewBuilderFactory {
    func makeBuilder(identifier: DemoIdentifier) -> ViewBuilder
}

struct DefaultViewBuilderFactory: ViewBuilderFactory {
    func makeBuilder(identifier: DemoIdentifier) -> ViewBuilder {
        switch identifier {
        case .edge:
            return EdgeViewBuilder()
        case .topToBottom:
            return TopToBottomViewBuilder()
        case .leadingToTrailing:
            return LeadingToTrailingViewBuilder()
        case .horizontalAndVerticalCenter:
            return HorizontalAndVerticalCenterViewBuilder()
        case .widthToHeight:
            return WidthToHeightViewBuilder()
        case .equalWidthsAndHeights:
            return EqualWidthsAndHeightsViewBuilder()
        case .centersToEdges:
            return CentersToEdgesViewBuilder()
        case .customConstraint:
            return CustomConstraintViewBuilder()
        }
    }
}
