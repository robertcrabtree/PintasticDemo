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
    case topLeftView = "demo.centers.edges.top.left"
    case topRightView = "demo.centers.edges.top.right"
    case bottomRightView = "demo.centers.edges.bottom.right"
    case bottomLeftView = "demo.centers.edges.bottom.left"
    case centerView = "demo.centers.edges.center"
}

enum CustomConstraintDemoAccessibility: String, Accessibility, CaseIterable {
    case view = "demo.custom.constraint.view"
}

enum EdgeDemoAccessibility: String, Accessibility, CaseIterable {
    case childView = "demo.edge.child"
}

enum EqualWidthsAndHeightsDemoAccessibility: String, Accessibility, CaseIterable {
    case leftView = "demo.equal.w.h.left"
    case rightView = "demo.equal.w.h.right"
}

enum HorizontalAndVerticalCenterDemoAccessibility: String, Accessibility, CaseIterable {
    case containerView = "demo.h.and.v.center.container"
    case nestedView = "demo.h.and.v.center.nested"
}

enum LeadingToTrailingDemoAccessibility: String, Accessibility, CaseIterable {
    case leftView = "demo.leading.trailing.left"
    case centerView = "demo.leading.trailing.center"
    case rightView = "demo.leading.trailing.right"
}

enum TopToBottomDemoAccessibility: String, Accessibility, CaseIterable {
    case topView = "demo.top.bottom.top"
    case centerView = "demo.top.bottom.center"
    case bottomView = "demo.top.bottom.bottom"
}

enum WidthToHeightDemoAccessibility: String, Accessibility, CaseIterable {
    case leftView = "demo.w.h.left"
    case rightView = "demo.w.h.right"
}

extension DemoIdentifier: Accessibility {}
