import XCTest
@testable import BerlinClock

class BerlinTimePresenter_Tests: XCTestCase {
    
    private var berlinTimePresenter:BerlinTimePresenter!
    
    override func setUp() {
        berlinTimePresenter = BerlinTimePresenter.init()
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

}
