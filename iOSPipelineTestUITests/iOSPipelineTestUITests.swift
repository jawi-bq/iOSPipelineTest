//
//  iOSPipelineTestUITests.swift
//  iOSPipelineTestUITests
//
//  Created by GaC on 13/01/2020.
//  Copyright © 2020 Test. All rights reserved.
//

import XCTest

class iOSPipelineTestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let app = XCUIApplication()
        app.launch()

        app.textFields["loginInput"].tap()
        app.textFields["loginInput"].typeText("test")
        app/*@START_MENU_TOKEN@*/.buttons["loginButtom"]/*[[".buttons[\"Button\"]",".buttons[\"loginButtom\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }

    /*func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }*/
}
