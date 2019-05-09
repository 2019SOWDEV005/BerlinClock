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
    
    func test_BlinkTwoYellowLightsAndOneRedLightInFiveMinutesRow_WhenFiftenMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(15)
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYROOOOOOOO", result)
    }
    
    func test_BlinkThreeYellowLightsAndOneRedLightInFiveMinutesRow_WhenTwentyMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(20)
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYOOOOOOO", result)
    }
    
    func test_BlinkFourYellowLightsAndOneRedLightInFiveMinutesRow_WhenTwentyFiveMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(25)
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYYOOOOOO", result)
    }
}
