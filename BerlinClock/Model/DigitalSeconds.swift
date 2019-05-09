class DigitalSeconds {
    private let digitalSeconds:Int
    
    init(_ seconds:Int) {
        self.digitalSeconds = seconds
    }
    
    func value() -> Int {
        return digitalSeconds
    }
}
