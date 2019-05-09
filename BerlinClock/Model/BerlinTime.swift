class BerlinTime {
    let secondsRowValue:String
    let fiveHoursRowValue:String
    let singleHoursRowValue:String
    let fiveMinuteRowValue:String
    let singleMinuteRowValue:String
    
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
