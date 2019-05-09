class BerlinTimeSingleHoursConverter {
    
    private let numberOfSingleHours:Int
    private let maximumNumberOfLights = 4
    
    init(_ digitalHours:DigitalHours) {
        self.numberOfSingleHours = digitalHours.numberOfSingleHoursValue()
    }
    
    func asSingleHoursRepresentation() -> String {
        var  singleHoursRepresentation = ""
        
        singleHoursRepresentation = singleHoursRepresentation.padding(toLength: numberOfSingleHours, withPad: LightIndicator.asStringValue(.Red), startingAt: 0)
        
        return  singleHoursRepresentation.padding(toLength: maximumNumberOfLights, withPad: LightIndicator.asStringValue(.Off), startingAt: 0)
    }
}
