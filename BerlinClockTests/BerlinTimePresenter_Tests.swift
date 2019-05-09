import XCTest
@testable import BerlinClock

class BerlinTimePresenter_Tests: XCTestCase {
    
    private var berlinTimePresenter:BerlinTimePresenter!
    private var berlinTimeView:MockBerlinTimeView!
    
    override func setUp() {
        berlinTimeView = MockBerlinTimeView()
        
        berlinTimePresenter = BerlinTimePresenter(berlinTimeView)
    }
    
    func test_ReturnTwentyFive_WhenComponentZeroReceived()  {
        let result = berlinTimePresenter.numberOfRowsInPickerView(0)
        
        XCTAssertEqual(25, result)
    }
    
    func test_ReturnOne_WhenComponentOneReceived()  {
        let result = berlinTimePresenter.numberOfRowsInPickerView(1)
        
        XCTAssertEqual(1, result)
    }
    
    func test_ReturnSixty_WhenComponentTwoReceived()  {
        let result = berlinTimePresenter.numberOfRowsInPickerView(2)
        
        XCTAssertEqual(60, result)
    }
    
    func test_ReturnOne_WhenComponentThreeReceived()  {
        let result = berlinTimePresenter.numberOfRowsInPickerView(3)
        
        XCTAssertEqual(1, result)
    }
    
    func test_ReturnSixty_WhenComponentFourReceived()  {
        let result = berlinTimePresenter.numberOfRowsInPickerView(4)
        
        XCTAssertEqual(60, result)
    }
    
    func test_ReturnOne_WhenComponentFiveReceived()  {
        let result = berlinTimePresenter.numberOfRowsInPickerView(5)
        
        XCTAssertEqual(1, result)
    }
    
    func test_ReturnRowValue_WhenComponentZeroReceived()  {
        let rowValue = 02
        
        let result = berlinTimePresenter.titleForRowPickerView(0, rowValue)
        
        XCTAssertEqual("02", result)
    }
    
    func test_ReturnHR_WhenComponentOneReceived()  {
        let rowValue = 02
        
        let result = berlinTimePresenter.titleForRowPickerView(1, rowValue)
        
        XCTAssertEqual("HR", result)
    }
    
    func test_ReturnRowValue_WhenComponentTwoReceived()  {
        let rowValue = 02
        
        let result = berlinTimePresenter.titleForRowPickerView(2, rowValue)
        
        XCTAssertEqual("02", result)
    }
    
    func test_ReturnMIN_WhenComponentThreeReceived()  {
        let rowValue = 02
        
        let result = berlinTimePresenter.titleForRowPickerView(3, rowValue)
        
        XCTAssertEqual("Min", result)
    }
    
    func test_ReturnRowValue_WhenComponentFourReceived()  {
        let rowValue = 02
        
        let result = berlinTimePresenter.titleForRowPickerView(4, rowValue)
        
        XCTAssertEqual("02", result)
    }
    
    func test_ReturnSEC_WhenComponentFiveReceived()  {
        let rowValue = 02
        
        let result = berlinTimePresenter.titleForRowPickerView(5, rowValue)
        
        XCTAssertEqual("Sec", result)
    }
    
    func test_ShowValidDigitalTime_WhenUserSelectedTimeInPicker()  {
        let digitalTime = DigitalTime(hours: 01, minutes: 02, seconds: 03)
        
        berlinTimePresenter.constructDigitalTime(digitalTime)
        
        XCTAssertEqual("01:02:03", berlinTimeView.getDigitalTime())
    }
    
    func test_ShowInvalidInputError_WhenUserNilValueIsReceived()  {
        
        berlinTimePresenter.constructBerlinDigits(digitalTime: nil)
        
        XCTAssertTrue (berlinTimeView.invalidInputErrorShown)
    }
    
    func test_ShowBerlinValue_WhenBerlinValuesConstructedFromDigitalValue()  {
        let digitalTime = DigitalTime(hours: 01, minutes: 02, seconds: 03)
        
        berlinTimePresenter.constructBerlinDigits(digitalTime: digitalTime)
        
        XCTAssertTrue (berlinTimeView.berlinTimeShown)
    }
    
    func test_ShowBerlinValueAsYOOOOOOOOOOOOOOOOOOOOOOO_WhenDigitalHourISZeroHoursZeroMinutesAndZeroSeconds()  {
        let digitalTime = DigitalTime(hours: 00, minutes: 00, seconds: 00)
        let berlinTime = BerlinTime.init("Y", "OOOO", "OOOO", "OOOOOOOOOOO", "OOOO")
        
        berlinTimePresenter.constructBerlinDigits(digitalTime: digitalTime)
        
        XCTAssertEqual(berlinTimeView.berlinTimeValue, berlinTime)
    }
    
    func test_ShowBerlinValueAsORRRRRRROYYRYYRYYRYYYYYY_WhenDigitalHourISTwentyThreeHoursFiftyNineMinutesAndFiftyNineSeconds()  {
        let digitalTime = DigitalTime(hours: 23, minutes: 59, seconds: 59)
        let berlinTime = BerlinTime.init("O", "RRRR", "RRRO", "YYRYYRYYRYY", "YYYY")
        
        berlinTimePresenter.constructBerlinDigits(digitalTime: digitalTime)
        
        XCTAssertEqual(berlinTimeView.berlinTimeValue, berlinTime)
    }
}

fileprivate class MockBerlinTimeView:BerlinTimeView {
    
    private var digitalTime:String?
    fileprivate var berlinTimeValue:BerlinTime?
    
    fileprivate var invalidInputErrorShown = false
    fileprivate var berlinTimeShown = false
    
    func showDigitalTime(digitalTime: String) {
        self.digitalTime = digitalTime
    }
    
    func showInvalidInputError() {
        invalidInputErrorShown = true
    }
    
    func getDigitalTime() -> String {
        guard let digitalValue = digitalTime else {
            return ""
        }
        return digitalValue
    }
    
    func showBerlinTime(berlinTime: BerlinTime) {
        berlinTimeShown = true
        berlinTimeValue = berlinTime
    }
}
