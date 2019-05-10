class BerlinTimeFiveHoursConverter {
    private let numberOfFiveHours:Int
    private let maximumNumberOfLights = 4
    
    init(_ digitalHours:DigitalHours) {
        self.numberOfFiveHours = digitalHours.numberOFFiveHoursValue()
    }
    
    func asBerlinTime() -> String {
        var  berlinTime = ""
        
        berlinTime = berlinTime.padding(toLength: numberOfFiveHours, withPad: LightIndicator.asStringValue(.Red), startingAt: 0)
        
        return  berlinTime.padding(toLength: maximumNumberOfLights, withPad: LightIndicator.asStringValue(.Off), startingAt: 0)
    }
}
