import XCTest
@testable import BerlinClock

class BerlinTimeSingleMinutesConverter_Tests: XCTestCase {
    
    func test_BlinkSingleYellowLightInSingleMinutesRow_WhenSixMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(DigitalMinutes.init(6))
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("YOOO", result)
    }
    
    func test_BlinkTwoYellowLightsInSingleMinutesRow_WhenSevenMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(DigitalMinutes.init(7))
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("YYOO", result)
    }
    
    func test_BlinkThreeYellowLightsInSingleMinutesRow_WhenEightMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(DigitalMinutes.init(8))
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("YYYO", result)
    }
    
    func test_BlinkFourYellowLightsInSingleMinutesRow_WhenNineMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(DigitalMinutes.init(9))
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("YYYY", result)
    }
    
    func test_OffAllLightsInSingleMinutesRow_WhenTenMinutesReceived()  {
        
        let berlinTimeSingleMinutesConverter = BerlinTimeSingleMinutesConverter.init(DigitalMinutes.init(10))
        
        let result = berlinTimeSingleMinutesConverter.asSingleMinutesRepresentation()
        
        XCTAssertEqual("OOOO", result)
    }
}
