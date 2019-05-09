class DigitalHours {
    private let numberOfSingleHours:Int
 
    init(_ hours:Int) {
        self.numberOfSingleHours = hours % 5
     }
    
    func numberOfSingleHoursValue() -> Int {
        return numberOfSingleHours
    }
}
