
import Foundation
import XCTest

class BDDTest: ToDoListTEstBase {
    
    func testAddRemoveTaskInBDDStyle() {
        
        givenAppIsReady()
        whenIEnterTaskName()
        whenISaveTask()
        WhenIDeleteTask()
        thenNoTaskIsVisible()
    }
    
    func testChangeThemeBDDStyle() {
        
        givenAppIsReady()
        whenIEnterSettings()
        whenIChangeTheme()
        thenISeeTheThemeIsChanged()
    }
}

