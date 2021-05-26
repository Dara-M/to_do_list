

import Foundation
import XCTest

enum ToDoListScreen: String {
    
    case addTask = "Add Task"
    case save = "Save"
    case delete = "Delete"
    case allTasks = "All Tasks"
    case settingsIcon = "settingsIcon"
    case theme = "Theme"
    case rosePink = "Rose Pink"
    case ok = "OK"
    case settings = "Settings"
    
    var element: XCUIElement {
        
        switch self{
            
        case .addTask, .save, .delete, .settingsIcon, .ok, .settings:
            return XCUIApplication().buttons[self.rawValue]
        case .allTasks, .theme, .rosePink:
            return XCUIApplication().staticTexts[self.rawValue]
            
        }
    }
    
}
