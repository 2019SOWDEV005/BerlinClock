import XCTest
@testable import BerlinClock

class BerlinTimeSingleMinutesConverter_Tests: XCTestCase {
    
    func test_BlinkSingleYellowLightInSingleMinutesRow_WhenSixMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(6)
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("YOOO", result)
    }
    
    func test_BlinkTwoYellowLightsInSingleMinutesRow_WhenSevenMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(7)
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("YYOO", result)
    }
    
    func test_BlinkThreeYellowLightsInSingleMinutesRow_WhenEightMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(8)
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("YYYO", result)
    }
}
