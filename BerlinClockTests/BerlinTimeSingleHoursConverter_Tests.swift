import XCTest
@testable import BerlinClock

class BerlinTimeSingleHoursConverter_Tests: XCTestCase {
    
    func test_BlinkOneRedLightInSingleHoursRow_WhenOneHourReceived() {
        let berlinTimeSingleHoursConverter = BerlinTimeSingleHoursConverter.init(DigitalHours.init(1))
        
        let result = berlinTimeSingleHoursConverter.asSingleHoursRepresentation()
        
        XCTAssertEqual("ROOO", result)
    }
    
    func test_BlinkTwoRedLightsInSingleHoursRow_WhenTwoHoursReceived() {
        let berlinTimeSingleHoursConverter = BerlinTimeSingleHoursConverter.init(DigitalHours.init(2))
        
        let result = berlinTimeSingleHoursConverter.asSingleHoursRepresentation()
        
        XCTAssertEqual("RROO", result)
    }
    
    func test_BlinkThreeRedLightsInSingleHoursRow_WhenThreeHoursReceived() {
        let berlinTimeSingleHoursConverter = BerlinTimeSingleHoursConverter.init(DigitalHours.init(3))
        
        let result = berlinTimeSingleHoursConverter.asSingleHoursRepresentation()
        
        XCTAssertEqual("RRRO", result)
    }
    
    func test_BlinkFourRedLightsInSingleHoursRow_WhenFourHoursReceived() {
        let berlinTimeSingleHoursConverter = BerlinTimeSingleHoursConverter.init(DigitalHours.init(4))
        
        let result = berlinTimeSingleHoursConverter.asSingleHoursRepresentation()
        
        XCTAssertEqual("RRRR", result)
    }
    
    func test_OffAllLightsInSingleHoursRow_WhenFiveHoursReceived() {
        let berlinTimeSingleHoursConverter = BerlinTimeSingleHoursConverter.init(DigitalHours.init(5))
        
        let result = berlinTimeSingleHoursConverter.asSingleHoursRepresentation()
        
        XCTAssertEqual("OOOO", result)
    }
}
