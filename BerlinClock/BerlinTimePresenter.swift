protocol BerlinTimeView {
    func showDigitalTime(digitalTime:String)
    func showInvalidInputError()
    func showBerlinTime(berlinTime:BerlinTime)
}

class BerlinTimePresenter {
    private let berlinTimeView: BerlinTimeView
    
    init(_ berlinTimeView:BerlinTimeView) {
        self.berlinTimeView = berlinTimeView
    }
    
    func numberOfRowsInPickerView(_ component: Int) -> Int {
        switch (component) {
        case 1,3,5:
            return 1
        case 0:
            return  25
        case 2,4:
            return 60
        default:
            return 0
        }
    }
    
    func titleForRowPickerView(_ component: Int, _ row: Int) -> String? {
        switch component {
        case 0,2,4:
            return String(format: "%02d", row)
        case 1:
            return "HR"
        case 3:
            return "Min"
        case 5:
            return "Sec"
        default:
            return nil
        }
    }
    
    func constructDigitalTime(_ digitalTime:DigitalTime) {
        let digitalHours = digitalTime.hoursValue()
        let digitalMinutes = digitalTime.minutesValue()
        let digitalSeconds = digitalTime.secondsValue()
        
        let digitalTime = String(format: "%02d:%02d:%02d",digitalHours.value(),digitalMinutes.value(),digitalSeconds.value())
        berlinTimeView.showDigitalTime(digitalTime: digitalTime)
    }
    
    func constructBerlinDigits(digitalTime:DigitalTime?) {
        guard let time = digitalTime else {
            berlinTimeView.showInvalidInputError()
            return
        }
        let secondsRowValue = getSecondsBerlineValue(time.secondsValue())
        let fiveHoursRowValue = getFiveHoursBerlineValue(time.hoursValue())
        let singleHoursRowValue = getSingleHoursBerlineValue(time.hoursValue())
        let fiveMinuteRowValue = getFiveMinutesBerlinValue(time.minutesValue())
        let singleMinuteRowValue = getSingleMinutesBerlinValue(time.minutesValue())
        
        let berlinTime = BerlinTime.init(secondsRowValue ,
                                         fiveHoursRowValue,
                                          singleHoursRowValue,
                                         fiveMinuteRowValue,
                                         singleMinuteRowValue)
        
        berlinTimeView.showBerlinTime(berlinTime:berlinTime)
    }
    
    private func getSingleMinutesBerlinValue(_ digitalMinutes:DigitalMinutes) ->String {
        let singleMinutesConverter = BerlinTimeSingleMinutesConverter.init(digitalMinutes)
        return singleMinutesConverter.asBerlinTime()
    }
    
    private func getFiveMinutesBerlinValue(_ digitalMinutes:DigitalMinutes) -> String {
        let fiveMinutesConverter = BerlinTimeFiveMinutesConverter.init(digitalMinutes)
        return fiveMinutesConverter.asBerlinTime()
    }
    
    private func getSingleHoursBerlineValue(_ digitalHours:DigitalHours) ->String {
        let singleHoursConverter = BerlinTimeSingleHoursConverter.init(digitalHours)
        return singleHoursConverter.asBerlinTime()
    }
    
    private func getFiveHoursBerlineValue(_ digitalHours:DigitalHours) ->String {
        let fiveHoursConverter = BerlinTimeFiveHoursConverter.init(digitalHours)
        return fiveHoursConverter.asBerlinTime()
    }
    
    private func getSecondsBerlineValue(_ digitalSeconds:DigitalSeconds) ->String {
        let berlinTimeSecondsConverter = BerlinTimeSecondsConverter.init(digitalSeconds)
        return berlinTimeSecondsConverter.asBerlinTime()
    }
}
