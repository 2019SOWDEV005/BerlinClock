import XCTest
@testable import BerlinClock

class BerlinTimePresenter_Tests: XCTestCase {
    
    private var berlinTimePresenter:BerlinTimePresenter!
    
    override func setUp() {
        let berlinTimeView = MockBerlinTimeView()
        
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
}

fileprivate class MockBerlinTimeView:BerlinTimeView {
    func showDigitalTime(digitalTime: String) {
        
    }
}
