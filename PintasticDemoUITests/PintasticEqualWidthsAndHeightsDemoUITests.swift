//
//  PintasticEqualWidthsAndHeightsDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticEqualWidthsAndHeightsDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(menuAccessibility: .equalWidthsAndHeights,
                  demoAccessibility: EqualWidthsAndHeightsDemoAccessibility.allCases)
    }
}
