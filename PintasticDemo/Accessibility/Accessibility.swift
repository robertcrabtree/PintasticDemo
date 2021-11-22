//
//  Accessibility.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

protocol Accessibility {
    var accessibility: String { get }
}

extension Accessibility where Self: RawRepresentable, RawValue == String {
    var accessibility: String { rawValue }
}

enum CentersToEdgesDemoAccessibility: String, Accessibility, CaseIterable {
    case topLeftView
    case topRightView
    case bottomRightView
    case bottomLeftView
    case centerView
}

enum CustomConstraintDemoAccessibility: String, Accessibility, CaseIterable {
    case childView
}

enum EdgeDemoAccessibility: String, Accessibility, CaseIterable {
    case childView
}

enum EqualWidthsAndHeightsDemoAccessibility: String, Accessibility, CaseIterable {
    case leftView
    case rightView
}

enum HorizontalAndVerticalCenterDemoAccessibility: String, Accessibility, CaseIterable {
    case containerView
    case nestedView
}

enum LeadingToTrailingDemoAccessibility: String, Accessibility, CaseIterable {
    case leftView
    case centerView
    case rightView
}

enum TopToBottomDemoAccessibility: String, Accessibility, CaseIterable {
    case topView
    case centerView
    case bottomView
}

enum WidthToHeightDemoAccessibility: String, Accessibility, CaseIterable {
    case leftView
    case rightView
}

extension DemoIdentifier: Accessibility {}
