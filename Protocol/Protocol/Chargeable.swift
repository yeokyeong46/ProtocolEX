protocol Chargeable {
    var chargemAhPerHour: Double { get }
    func convert(chargeablemAhPerHour: Double) -> Double
}
