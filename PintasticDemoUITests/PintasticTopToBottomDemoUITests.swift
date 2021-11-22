//
//  PintasticTopToBottomDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticTopToBottomDemoUITests: PintasticDemoUITestBase {
    func testExample() throws {
        startDemo(menuAccessibility: .topToBottom,
                  demoAccessibility: TopToBottomDemoAccessibility.allCases)
    }
}
