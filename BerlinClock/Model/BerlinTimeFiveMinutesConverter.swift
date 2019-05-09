class BerlinTimeFiveMinutesConverter {
    private let numberOfFiveMinutes: Int
    private let maximumNumberOfLights = 11
    private let yellowLightRepresentation = "Y"
    private let lightOffRepresentation = "O"
    
    init(_ digitalMinutes:Int) {
        self.numberOfFiveMinutes = digitalMinutes / 5
    }
    
    func asFiveMinutesRepresentation() -> String {
        var fiveMinutesRepresentation = ""
        
        fiveMinutesRepresentation = fiveMinutesRepresentation.padding(toLength: numberOfFiveMinutes, withPad:yellowLightRepresentation, startingAt: 0)

            return  fiveMinutesRepresentation.padding(toLength: maximumNumberOfLights, withPad: lightOffRepresentation, startingAt: 0)
        }
}
