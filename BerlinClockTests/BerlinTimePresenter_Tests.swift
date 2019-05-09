import XCTest
@testable import BerlinClock

class BerlinTimePresenter_Tests: XCTestCase {
    
    func test_ReturnTwentyFive_WhenComponentZeroReceived()  {
        let berlinTimePresenter = BerlinTimePresenter.init()
        
        let result = berlinTimePresenter.numberOfRowsInPickerView(0)
        
        XCTAssertEqual(25, result)
    }
    
    func test_ReturnOne_WhenComponentOneReceived()  {
        let berlinTimePresenter = BerlinTimePresenter.init()
        
        let result = berlinTimePresenter.numberOfRowsInPickerView(1)
        
        XCTAssertEqual(1, result)
    }
}
