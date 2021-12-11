//
//  Demo.swift
//  PintasticDemo
//
//  Created by Rob on 11/21/21.
//

import Foundation

enum DemoIdentifier: String, CaseIterable {
    case edge
    case topToBottom
    case leadingToTrailing
    case horizontalAndVerticalCenter
    case widthToHeight
    case equalWidthsAndHeights
    case centersToEdges
    case customConstraint
    case corners
}

struct Demo {
    let identifier: DemoIdentifier
    let title: String
}
