class DigitalHours {
    private let numberOfSingleHours:Int
    private let numberOfFiveHours:Int
 
    init(_ hours:Int) {
        self.numberOfSingleHours = hours % 5
        self.numberOfFiveHours = hours / 5
     }
    
    func numberOfSingleHoursValue() -> Int {
        return numberOfSingleHours
    }
    
    func numberOFFiveHoursValue() -> Int {
        return numberOfFiveHours
    }
}
