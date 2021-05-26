
import Foundation
import XCTest

class ToDoListTEstBase: XCTestCase{
    
   let app = XCUIApplication()
   override func setUpWithError() throws {
       
    //super.setUp()
   continueAfterFailure = false
   app.launch()
    
    
   }

    override func tearDownWithError() throws {
    //super.tearDown()

    }
    
    func XCTAyncAssert(_ element: XCUIElement){
        let isElementExist = element.waitForExistence(timeout: 3)
        sleep(2)
        if isElementExist {
            XCTAssertTrue(element.isHittable)
        }
    }
}





