//
//  _0230112_YvesDukuze_NYCSchoolsUITests.swift
//  20230112-YvesDukuze-NYCSchoolsUITests
//
//  Created by apple on 20/03/2023.
//

import XCTest

final class _0230112_YvesDukuze_NYCSchoolsUITests: XCTestCase {
    
    private var app: XCUIApplication!
    
    
    override func setUpWithError() throws {
        app = XCUIApplication()
        app.launch()
        continueAfterFailure = false
        
    }
    
    
    override func tearDownWithError() throws {
        app = nil
    }
    
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
    }
    
    //    func testUIFlow() {
    //
    //        let app = XCUIApplication()
    //        app.tables.staticTexts["2865 West 19th Street, Brooklyn, NY 11224 (40.576976, -73.985413)"].tap()
    //        app/*@START_MENU_TOKEN@*/.staticTexts["SATs Results"]/*[[".buttons[\"SATs Results\"].staticTexts[\"SATs Results\"]",".staticTexts[\"SATs Results\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    //
    //        let satsResultsStaticText = app.staticTexts["SATs Results"]
    //        satsResultsStaticText/*@START_MENU_TOKEN@*/.swipeLeft()/*[[".swipeDown()",".swipeLeft()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    //        satsResultsStaticText/*@START_MENU_TOKEN@*/.swipeLeft()/*[[".swipeDown()",".swipeLeft()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    //        app.windows.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.swipeDown()
    //
    //    }
    
    func testStaticTextField() {
        XCTAssertTrue(app.staticTexts["SATs Results"].exists)
    }
    
    func testStaticTextField2() {
        XCTAssertTrue(app.tables.staticTexts["2865 West 19th Street, Brooklyn, NY 11224 (40.576976, -73.985413"].exists)
    }
    
    func testNavigationControllerTitle(){
        XCTAssertTrue(app.navigationBars.staticTexts["NYC Schools"].exists)
    }
    
    //    func testTableTest(){
    
    //        app.tables.staticTexts["2865 West 19th Street, Brooklyn, NY 11224 (40.576976, -73.985413)"].tap()
    //
    //    }
    //
        
        
//        func testUIFlow() {
//            let app = XCUIApplication()
//            app.tables.staticTexts["SchoolTittle"].tap()
//            app.staticTexts["SchoolCity"].tap()
//
//            let overview = app.staticTexts["OVERVIEW:  The WomenÂ’s Academy of Excellence is an all-girls public high school, serving grades 9-12. Our mission is to create a community of lifelong learners, to nurture the intellectual curiosity and creativity of young women and to address their developmental needs. The school community cultivates dynamic, participatory learning, enabling students to achieve academic success at many levels, especially in the fields of math, science, and civic responsibility. Our scholars are exposed to a challenging curriculum that encourages them to achieve their goals while being empowered to become young women and leaders. Our Philosophy is GIRLS MATTER!"]
//            overview.tap()
//
//            let element = app.windows.children(matching: .other).element
//            element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element.tap()
//            overview/*@START_MENU_TOKEN@*/.press(forDuration: 0.0);/*[[".tap()",".press(forDuration: 0.0);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//            app/*@START_MENU_TOKEN@*/.staticTexts["SATs Results"]/*[[".buttons[\"SATs Results\"].staticTexts[\"SATs Results\"]",".staticTexts[\"SATs Results\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//            app.staticTexts["SATs Results"]/*@START_MENU_TOKEN@*/.swipeRight()/*[[".swipeDown()",".swipeRight()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//            element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.swipeDown()
//            let titlelabel = app.staticTexts["SATs Results"]
//            XCTAssertTrue(titlelabel.exists)
////            XCTAssertTrue(app.staticTexts["SATs Results"].exists)
//        }
    
//    func testflow(){
//
//
//        let app = XCUIApplication()
//        app.tables.cells.containing(.staticText, identifier:"718-542-0740").children(matching: .other).element(boundBy: 1).tap()
//        app.staticTexts["OVERVIEW:  The WomenÂ’s Academy of Excellence is an all-girls public high school, serving grades 9-12. Our mission is to create a community of lifelong learners, to nurture the intellectual curiosity and creativity of young women and to address their developmental needs. The school community cultivates dynamic, participatory learning, enabling students to achieve academic success at many levels, especially in the fields of math, science, and civic responsibility. Our scholars are exposed to a challenging curriculum that encourages them to achieve their goals while being empowered to become young women and leaders. Our Philosophy is GIRLS MATTER!"].tap()
//        app.windows.children(matching: .other).element.children(matching: .other).element(boundBy: 0).tap()
//        app.staticTexts["SATs Results"].swipeDown()
//
//
//    }
        
        
        func testLaunchPerformance() throws {
            if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
                measure(metrics: [XCTApplicationLaunchMetric()]) {
                    XCUIApplication().launch()
                }
            }
        }
        
    }

