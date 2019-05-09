import XCTest

class BerlinTimeViewController_UITests: XCTestCase {

    override func setUp() {
         XCUIApplication().launch()
    }

    func test_ShowEnterValidInputError_WhenUserClickShowBerlinTimeButtonWithOutSelectingDateFromPicker() {
        
        let app = XCUIApplication()
        app.buttons["Show Berlin Time"].tap()
        
        let errorAlert = app.alerts["Error"]
        
        XCTAssertTrue(errorAlert.exists)
    }
    
    func test_ShouldNotShowEnterValidInputError_WhenUserSelectsTheValueInPickerAndClickOnShowBerlinTimeButton() {
        
        let app = XCUIApplication()
        app.textFields["Select Digital Time"].tap()
        
        let pickerWheel = app.pickers.children(matching: .pickerWheel).matching(identifier: "00").element(boundBy: 0)
        pickerWheel.tap()
        pickerWheel.adjust(toPickerWheelValue: "18")

        app.toolbars["Toolbar"].buttons["Done"].tap()
        app.buttons["Show Berlin Time"].tap()
        
        let errorAlert = app.alerts["Error"]
        XCTAssertFalse(errorAlert.exists)
 
    }
}
