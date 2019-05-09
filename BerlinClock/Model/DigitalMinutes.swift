class DigitalMinutes {
    private let numberOfSingleMinutes:Int
    private let numberOfFiveMinutes:Int

    init(_ minutes:Int) {
        self.numberOfSingleMinutes = minutes % 5
        self.numberOfFiveMinutes = minutes / 5
    }
    
    func numberOfSingleMinutesValue() -> Int {
        return numberOfSingleMinutes
    }
    
    func numberOfFiveMinutesValue() -> Int {
        return numberOfFiveMinutes
    }
}
