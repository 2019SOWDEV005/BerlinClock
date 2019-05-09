class BerlinTime:Equatable {
    let secondsRowValue:String
    let fiveHoursRowValue:String
    let singleHoursRowValue:String
    let fiveMinuteRowValue:String
    let singleMinuteRowValue:String
    
    public static func == (lhs: BerlinTime, rhs: BerlinTime) -> Bool {
        return lhs.secondsRowValue == rhs.secondsRowValue &&
            lhs.fiveHoursRowValue == rhs.fiveHoursRowValue &&
            lhs.singleHoursRowValue == rhs.singleHoursRowValue &&
            lhs.fiveMinuteRowValue == rhs.fiveMinuteRowValue &&
            lhs.singleMinuteRowValue == rhs.singleMinuteRowValue
    }
    
    init(_ secondsRowValue:String,
         _ fiveHoursRowValue:String,
         _ singleHoursRowValue:String,
         _ fiveMinuteRowValue:String,
         _ singleMinuteRowValue:String) {
        self.secondsRowValue = secondsRowValue
        self.fiveHoursRowValue = fiveHoursRowValue
        self.singleHoursRowValue = singleHoursRowValue
        self.fiveMinuteRowValue = fiveMinuteRowValue
        self.singleMinuteRowValue = singleMinuteRowValue
    }
}
