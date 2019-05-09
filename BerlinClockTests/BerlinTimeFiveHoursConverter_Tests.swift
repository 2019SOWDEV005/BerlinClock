import XCTest
@testable import BerlinClock

class BerlinTimeFiveHoursConverter_Tests: XCTestCase {
    
    func test_BlinkSingleRedLightInFiveHoursRow_WhenFiveHoursReceived() {
        let berlinTimeFiveHoursConverter = BerlinTimeFiveHoursConverter.init(DigitalHours.init(5))
        
        let result = berlinTimeFiveHoursConverter.asBerlinTime()
        
        XCTAssertEqual("ROOO", result)
    }
    
    func test_BlinkTwoRedLightInFiveHoursRow_WhenTenHoursReceived() {
        let berlinTimeFiveHoursConverter = BerlinTimeFiveHoursConverter.init(DigitalHours.init(10))
        
        let result = berlinTimeFiveHoursConverter.asBerlinTime()
        
        XCTAssertEqual("RROO", result)
    }
    
    func test_BlinkThreeRedLightInFiveHoursRow_WhenFiftenHoursReceived() {
        let berlinTimeFiveHoursConverter = BerlinTimeFiveHoursConverter.init(DigitalHours.init(15))
        
        let result = berlinTimeFiveHoursConverter.asBerlinTime()
        
        XCTAssertEqual("RRRO", result)
    }
    
    func test_BlinkFourRedLightsInFiveHoursRow_WhenTwentyHoursReceived() {
        let berlinTimeFiveHoursConverter = BerlinTimeFiveHoursConverter.init(DigitalHours.init(20))
        
        let result = berlinTimeFiveHoursConverter.asBerlinTime()
        
        XCTAssertEqual("RRRR", result)
    }
}
