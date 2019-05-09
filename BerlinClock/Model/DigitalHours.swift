class DigitalHours {
    private let numberOfSingleHours:Int
    private let numberOfFiveHours:Int
    private let hours:Int
 
    init(_ hours:Int) {
        self.numberOfSingleHours = hours % 5
        self.numberOfFiveHours = hours / 5
        self.hours = hours
     }
    
    func numberOfSingleHoursValue() -> Int {
        return numberOfSingleHours
    }
    
    func numberOFFiveHoursValue() -> Int {
        return numberOfFiveHours
    }
    
    func value() -> Int {
        return hours
    }
}
