import Foundation
import XCTest

extension ToDoListTEstBase {
    
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Give App is Ready"){_ in
            XCTAyncAssert(ToDoListScreen.addTask.element)
        }
    }
    
    func whenIEnterTaskName() {
        XCTContext.runActivity(named: "When I Enter Task Name") {_ in
        ToDoListScreen.addTask.element.tap()
        app.typeText("Test")
        }
    }
    
    func whenISaveTask() {
        XCTContext.runActivity(named: "When I Save Task") {_ in
        ToDoListScreen.save.element.tap()
        }
    }
    func WhenIDeleteTask() {
        XCTContext.runActivity(named: "When I Delete Task") {_ in
        ToDoListScreen.allTasks.element.tap()
        app.staticTexts["Test"].swipeLeft()
        ToDoListScreen.delete.element.tap()
        }
    }
    func thenNoTaskIsVisible() {
        XCTContext.runActivity(named: "Then No Task Is Visible") {_ in
        XCTAssertFalse(app.staticTexts["Test"].exists, "The text was found")
 
        }
    }
    
    func whenIEnterSettings() {
        XCTContext.runActivity(named: "When I Enter Settings") {_ in
        ToDoListScreen.settingsIcon.element.tap()
            ToDoListScreen.theme.element.tap()
      }
    }
    func whenIChangeTheme() {
        XCTContext.runActivity(named: "When I Change Theme") {_ in
        ToDoListScreen.rosePink.element.tap()
            ToDoListScreen.ok.element.tap()

      }
    }
    
    func thenISeeTheThemeIsChanged() {
        XCTContext.runActivity(named: "Then I See The Theme Is Changed") {_ in
        ToDoListScreen.settings.element.tap()
        XCTAssertTrue(app.staticTexts["Rose Pink"].exists, "The theme was not changed")

      }
    }
    
}


