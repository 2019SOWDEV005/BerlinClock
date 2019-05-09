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
}
