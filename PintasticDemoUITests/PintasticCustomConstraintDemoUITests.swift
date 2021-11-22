//
//  PintasticCustomConstraintDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticCustomConstraintDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(menuAccessibility: .customConstraint,
                  demoAccessibility: CustomConstraintDemoAccessibility.allCases)
    }
}
