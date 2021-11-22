//
//  PintasticEdgeDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticEdgeDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(menuAccessibility: .edge,
                  demoAccessibility: EdgeDemoAccessibility.allCases)
    }
}
