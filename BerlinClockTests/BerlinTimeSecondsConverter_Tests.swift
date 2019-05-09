import XCTest
@testable import BerlinClock

class BerlinTimeSecondsConverter_Tests: XCTestCase {
    
    func test_BlinkYellowLightInSecondsRow_WhenEvenNumberOFSecondsReceived() {
        let berlinTimeSecondsConverter = BerlinTimeSecondsConverter.init(DigitalSeconds(10))
        
        let result = berlinTimeSecondsConverter.asBerlinTime()
        
        XCTAssertEqual(LightIndicator.asStringValue(.Yellow), result)
    }
    
}
