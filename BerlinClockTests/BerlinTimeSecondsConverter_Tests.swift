import XCTest
@testable import BerlinClock

class BerlinTimeSecondsConverter_Tests: XCTestCase {
    
    func test_BlinkYellowLightInSecondsRow_WhenEvenNumberOFSecondsReceived() {
        let berlinTimeSecondsConverter = BerlinTimeSecondsConverter.init(DigitalSeconds(10))
        
        let result = berlinTimeSecondsConverter.asBerlinTime()
        
        XCTAssertEqual(LightIndicator.asStringValue(.Yellow), result)
    }
    
    func test_OffLightInSecondsRow_WhenOddNumberOFSecondsReceived() {
        let berlinTimeSecondsConverter = BerlinTimeSecondsConverter.init(DigitalSeconds(7))
        
        let result = berlinTimeSecondsConverter.asBerlinTime()
        
        XCTAssertEqual(LightIndicator.asStringValue(.Off), result)
    }
}
