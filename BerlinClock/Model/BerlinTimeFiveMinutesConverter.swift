class BerlinTimeFiveMinutesConverter {
    private let numberOfFiveMinutes: Int
    private let maximumNumberOfLights = 11
    
    init(_ digitalMinutes:DigitalMinutes) {
        self.numberOfFiveMinutes = digitalMinutes.numberOfFiveMinutesValue()
    }
    
    func asBerlinTime() -> String {
        var fiveMinutesRepresentation = ""
        
        guard numberOfFiveMinutes > 0 else {
            return  fiveMinutesRepresentation.padding(toLength: maximumNumberOfLights, withPad: LightIndicator.asStringValue(.Off), startingAt: 0)
        }
        
        constructFiveMinutesRepresentation(&fiveMinutesRepresentation)
        
        return  fiveMinutesRepresentation.padding(toLength: maximumNumberOfLights, withPad: LightIndicator.asStringValue(.Off), startingAt: 0)
    }
    
    private func constructFiveMinutesRepresentation(_ berlinDigits: inout String) {
        
        for minute in 1...numberOfFiveMinutes {
            if minute % 3 == 0 {
                berlinDigits += LightIndicator.asStringValue(.Red)
            }
            else {
                berlinDigits += LightIndicator.asStringValue(.Yellow)
            }
        }
    }
}
