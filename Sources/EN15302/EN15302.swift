public enum EN15302 {

    public static func profile(_ type: WheelProfileType) -> WheelProfile {
        switch type {
        case .wheelA: return WheelA()
        case .wheelB: return WheelB()
        case .wheelC: return WheelC()
        case .wheelH: return WheelH()
        case .wheelI: return WheelI()
        }
    }



    public static func profile(_ type: RailProfileType) -> RailProfile {
        switch type {
        case .railA: return RailA()
        }
    }

}
