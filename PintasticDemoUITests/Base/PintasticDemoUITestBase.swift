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
        withIdentifier identifier: DemoIdentifier,
        accessibilityIdentifiers: [Accessibility]
    ) {
        app.tables.cells[identifier].tap()
        accessibilityIdentifiers.forEach {
            XCTAssertTrue(app.otherElements[$0].exists)
        }
        app.buttons["Demo Menu"].tap()
    }
}

extension XCUIElementQuery {
    subscript(key: Accessibility) -> XCUIElement {
        self[key.accessibility]
    }
}
