//
//  PintasticWidthToHeightDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticWidthToHeightDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(menuAccessibility: .widthToHeight,
                  demoAccessibility: WidthToHeightDemoAccessibility.allCases)
    }
}
