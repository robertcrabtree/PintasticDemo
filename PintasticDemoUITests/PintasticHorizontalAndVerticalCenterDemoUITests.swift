//
//  PintasticHorizontalAndVerticalCenterDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticHorizontalAndVerticalCenterDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(withIdentifier: .horizontalAndVerticalCenter,
                  accessibilityIdentifiers: HorizontalAndVerticalCenterDemoAccessibility.allCases)
    }
}
