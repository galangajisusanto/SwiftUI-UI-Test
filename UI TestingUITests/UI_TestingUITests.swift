//
//  UI_TestingUITests.swift
//  UI TestingUITests
//
//  Created by Mekari on 22/10/24.
//

import XCTest
@testable import UI_Testing

final class UI_TestingUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDownWithError() throws {
        app = nil
    }
    
    func testCarListExist() throws {
        // Assert the existence of the navigation bar with the title "Car List"
        XCTAssertTrue(app.navigationBars["Car List"].exists)
        
        let carList = app.collectionViews["CAR"]
                
        // Assert the existence of car list
        XCTAssertTrue(carList.exists, "The list car with Identifiers.Lists.CAR does not exist.")
        XCTAssertTrue(carList.cells.count > 0, "The list should have not more than 0 items.")
    }
    
    func testRedirectToCarDetails() throws {
       
        let carList = app.collectionViews["CAR"]
        
        // Tapped on the first item
        carList.cells.element(boundBy: 0).tap()
        
        // Assert the existence of car image and description
        XCTAssertTrue(app.images["CAR IMAGES"].exists)
        XCTAssertTrue(app.staticTexts["CAR DESCRIPTION"].exists)
    }
}

