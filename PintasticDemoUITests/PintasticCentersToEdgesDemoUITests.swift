//
//  PintasticCentersToEdgesDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticCentersToEdgesDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(withIdentifier: .centersToEdges,
                  accessibilityIdentifiers: CentersToEdgesDemoAccessibility.allCases)
    }
}
