class BerlinTimeFiveMinutesConverter {
    private let numberOfFiveMinutes: Int
    private let maximumNumberOfLights = 11
    private let yellowLightRepresentation = "Y"
    private let redLightRepresentation = "R"
    private let lightOffRepresentation = "O"
    
    init(_ digitalMinutes:Int) {
        self.numberOfFiveMinutes = digitalMinutes / 5
    }
    
    func asFiveMinutesRepresentation() -> String {
        var fiveMinutesRepresentation = ""
        
        guard numberOfFiveMinutes > 0 else {
            return  fiveMinutesRepresentation.padding(toLength: maximumNumberOfLights, withPad: lightOffRepresentation, startingAt: 0)
        }
        
        constructFiveMinutesRepresentation(&fiveMinutesRepresentation)
        
        return  fiveMinutesRepresentation.padding(toLength: maximumNumberOfLights, withPad: lightOffRepresentation, startingAt: 0)
    }
    
    private func constructFiveMinutesRepresentation(_ berlinDigits: inout String) {
        
        for minute in 1...numberOfFiveMinutes {
            if minute % 3 == 0 {
                berlinDigits += redLightRepresentation
            }
            else {
                berlinDigits += yellowLightRepresentation
            }
        }
    }
}
