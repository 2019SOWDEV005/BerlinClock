class DigitalTime {
private let hours:DigitalHours
private let minutes:DigitalMinutes
private let seconds:Int

init(hours:Int,minutes:Int,seconds:Int) {
    self.hours = DigitalHours(hours)
    self.minutes = DigitalMinutes(minutes)
    self.seconds = seconds
}

func hoursValue() -> DigitalHours {
    return hours
}

func minutesValue() -> DigitalMinutes {
    return minutes
}

func secondsValue() -> Int {
    return seconds
}
}
