//
//  PintasticCornersDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 12/11/21.
//

import XCTest

class PintasticCornersDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(menuAccessibility: .corners,
                  demoAccessibility: CornersDemoAccessibility.allCases)
    }
}
