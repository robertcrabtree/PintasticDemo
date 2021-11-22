//
//  PintasticLeadingToTrailingDemoUITests.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticLeadingToTrailingDemoUITests: PintasticDemoUITestBase {
    func testDemo() throws {
        startDemo(menuAccessibility: .leadingToTrailing,
                  demoAccessibility: LeadingToTrailingDemoAccessibility.allCases)
    }
}
