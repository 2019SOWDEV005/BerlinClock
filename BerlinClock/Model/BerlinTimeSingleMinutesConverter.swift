class BerlinTimeSingleMinutesConverter {
    
    private let numberOfSingleMinutes:Int
    private let maximumNumberOfLights = 4
 
    init(_ digitalMinutes:Int) {
        self.numberOfSingleMinutes = digitalMinutes % 5
    }
    
    func asSingleMinutesRepresentation() -> String {
        
        var  singleMinutesRepresentation = ""
        
        singleMinutesRepresentation = singleMinutesRepresentation.padding(toLength: numberOfSingleMinutes, withPad:LightIndicator.asStringValue(.Yellow), startingAt: 0)
        
        return  singleMinutesRepresentation.padding(toLength: maximumNumberOfLights, withPad: LightIndicator.asStringValue(.Off), startingAt: 0)
    }
}
