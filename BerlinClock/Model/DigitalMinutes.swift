class DigitalMinutes {
    private let numberOfSingleMinutes:Int
    
    init(_ minutes:Int) {
        self.numberOfSingleMinutes = minutes % 5
    }
    
    func numberOfSingleMinutesValue() -> Int {
        return numberOfSingleMinutes
    }
}
