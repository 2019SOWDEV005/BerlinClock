import XCTest
@testable import BerlinClock

class BerlinTimeFiveMinutesConverter_Tests: XCTestCase {
    
    func test_BlinkOneYellowLightInFiveMinutesRow_WhenFiveMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(5))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YOOOOOOOOOO", result)
    }
    
    func test_BlinkTwoYellowLightsInFiveMinutesRow_WhenTenMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(10))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYOOOOOOOOO", result)
    }
    
    func test_BlinkTwoYellowLightsAndOneRedLightInFiveMinutesRow_WhenFiftenMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(15))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYROOOOOOOO", result)
    }
    
    func test_BlinkThreeYellowLightsAndOneRedLightInFiveMinutesRow_WhenTwentyMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(20))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYOOOOOOO", result)
    }
    
    func test_BlinkFourYellowLightsAndOneRedLightInFiveMinutesRow_WhenTwentyFiveMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(25))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYYOOOOOO", result)
    }
    
    func test_BlinkFourYellowLightsAndTwoRedLightsInFiveMinutesRow_WhenThirtyMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(30))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYYROOOOO", result)
    }
    
    func test_BlinkFiveYellowLightsAndTwoRedLightsInFiveMinutesRow_WhenThirtyFiveMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(35))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYYRYOOOO", result)
    }
    
    func test_BlinkSixYellowLightsAndTwoRedLightsInFiveMinutesRow_WhenFourtyMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(40))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYYRYYOOO", result)
    }
    
    func test_BlinkSixYellowLightsAndThreeRedLightsInFiveMinutesRow_WhenFourtyFiveMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(45))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYYRYYROO", result)
    }
    
    func test_BlinkSevenYellowLightsAndThreeRedLightsInFiveMinutesRow_WhenFiftyMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(50))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYYRYYRYO", result)
    }
    
    func test_BlinkEightYellowLightsAndThreeRedLightsInFiveMinutesRow_WhenFiftyFiveMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(55))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("YYRYYRYYRYY", result)
    }
    
    func test_OffAllLightsInFiveMinutesRow_WhenTwoMinutesReceived() {
        let berlinTimeFiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(DigitalMinutes.init(2))
        
        let result = berlinTimeFiveMinutesConverter.asFiveMinutesRepresentation()
        
        XCTAssertEqual("OOOOOOOOOOO", result)
    }
}
