//
//  PintasticDemoUITestBase.swift
//  PintasticDemoUITests
//
//  Created by Rob on 11/21/21.
//

import XCTest

class PintasticDemoUITestBase: XCTestCase {

    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
    }

    func startDemo(
        menuAccessibility: MenuAccessibility,
        demoAccessibility: [Accessibility]
    ) {
        app.tables.cells[menuAccessibility].tap()
        demoAccessibility.forEach {
            XCTAssertTrue(app.otherElements[$0].exists)
            XCTAssertTrue(app.otherElements[$0].isHittable)
        }
        app.buttons["Demo Menu"].tap()
    }
}

extension XCUIElementQuery {
    subscript(key: Accessibility) -> XCUIElement {
        self[key.accessibility]
    }
}
