import XCTest
@testable import BerlinClock

class BerlinTimeFiveMinutesConverter_Tests: XCTestCase {
    
    func test_BlinkOneYellowLightInFiveMinutesRow_WhenFiveMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(5)
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YOOOOOOOOOO", result)
    }
    
    func test_BlinkTwoYellowLightsInFiveMinutesRow_WhenTenMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(10)
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYOOOOOOOOO", result)
    }
}
