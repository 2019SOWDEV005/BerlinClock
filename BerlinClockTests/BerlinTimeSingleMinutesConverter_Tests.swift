import XCTest
@testable import BerlinClock

class BerlinTimeSingleMinutesConverter_Tests: XCTestCase {
    
    func test_BlinkSingleYellowLightInSingleMinutesRow_WhenSixMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(6)
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("YOOO", result)
    }
}
