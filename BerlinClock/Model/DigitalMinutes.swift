class DigitalMinutes {
    private let numberOfSingleMinutes:Int
    private let numberOfFiveMinutes:Int
    private let minutes:Int

    init(_ minutes:Int) {
        self.numberOfSingleMinutes = minutes % 5
        self.numberOfFiveMinutes = minutes / 5
        self.minutes = minutes
    }
    
    func numberOfSingleMinutesValue() -> Int {
        return numberOfSingleMinutes
    }
    
    func numberOfFiveMinutesValue() -> Int {
        return numberOfFiveMinutes
    }
    
    func value() -> Int {
        return minutes
    }
}
