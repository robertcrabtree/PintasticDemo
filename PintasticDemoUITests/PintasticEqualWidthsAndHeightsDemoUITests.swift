//
//  PintasticEqualWidthsAndHeightsDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticEqualWidthsAndHeightsDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(withIdentifier: .equalWidthsAndHeights,
                  accessibilityIdentifiers: EqualWidthsAndHeightsDemoAccessibility.allCases)
    }
}
