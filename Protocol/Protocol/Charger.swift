struct Charger: Chargeable, Portable {
    let chargemAhPerHour: Double

    init(_ chagermAh: Double) {
        self.chargemAhPerHour = chagermAh
    }

    func convert(chargeablemAhPerHour: Double) -> Double {
        if chargeablemAhPerHour < self.chargemAhPerHour {
            return chargeablemAhPerHour
        } else {
            return self.chargemAhPerHour
        }
    }
}
