struct Charger: Chargeable {
    let chargemAhPerHour: Double
    
    init(_ chagermAh: Double) {
        self.chargemAhPerHour = chagermAh
    }
    
    func convert(chargeablemAhPerHour: Double) -> Double {
        if chargeablemAhPerHour < self.chargemAhPerHour {
            return self.chargemAhPerHour - chargeablemAhPerHour
        } else {
            return self.chargemAhPerHour
        }
    }
}
