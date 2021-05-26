
import XCTest

class ToDoListUITests: ToDoListTEstBase {
    


    func testAddRemoveTask () throws {
        
        XCTAyncAssert(ToDoListScreen.addTask.element)
        ToDoListScreen.addTask.element.tap()
        app.typeText("Test")
        ToDoListScreen.save.element.tap()
        ToDoListScreen.allTasks.element.tap()
        app.staticTexts["Test"].swipeLeft()
        ToDoListScreen.delete.element.tap()
        XCTAssertFalse(app.staticTexts["Test"].exists, "The text was found")
        
    }
    
    func testChangeTheme () throws {
        
        XCTAyncAssert(ToDoListScreen.settingsIcon.element)
        ToDoListScreen.settingsIcon.element.tap()
        ToDoListScreen.theme.element.tap()
        ToDoListScreen.rosePink.element.tap()
        ToDoListScreen.ok.element.tap()
        ToDoListScreen.settings.element.tap()
        XCTAssertTrue(app.staticTexts["Rose Pink"].exists, "The theme was not changed")
    }
}

