class BerlinTimeSingleMinutesConverter {
    
    private let numberOfSingleMinutes:Int
    private let maximumNumberOfLights = 4
    private let yellowLightRepresentation = "Y"
    private let lightOffRepresentation = "O"
    
    init(_ digitalMinutes:Int) {
        self.numberOfSingleMinutes = digitalMinutes % 5
    }
    
    func asSingleMinutesRepresentation() -> String {
        
        var  singleMinutesRepresentation = ""
        
        singleMinutesRepresentation = singleMinutesRepresentation.padding(toLength: numberOfSingleMinutes, withPad:yellowLightRepresentation, startingAt: 0)
        
        return  singleMinutesRepresentation.padding(toLength: maximumNumberOfLights, withPad: lightOffRepresentation, startingAt: 0)
    }
}
