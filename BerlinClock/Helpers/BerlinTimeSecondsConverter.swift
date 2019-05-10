class BerlinTimeSecondsConverter {
    private let digitalSeconds:DigitalSeconds
    
    init(_ digitalSeconds:DigitalSeconds) {
        self.digitalSeconds = digitalSeconds
    }
    
    func asBerlinTime() -> String {
        
        if isEvenSeconds(digitalSeconds) {
            return LightIndicator.asStringValue(.Yellow)
        }
        return LightIndicator.asStringValue(.Off)
    }
    
    private func isEvenSeconds(_ seconds:DigitalSeconds) ->Bool {
        return digitalSeconds.value() % 2 == 0
    }
}
