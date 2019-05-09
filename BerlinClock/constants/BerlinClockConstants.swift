enum LightIndicator:String {
    case Yellow = "Y"
    case Red    = "R"
    case Off    = "O"
    
    static func asStringValue(_ lightIndicator:LightIndicator) -> String {
        return lightIndicator.rawValue
    }
}
