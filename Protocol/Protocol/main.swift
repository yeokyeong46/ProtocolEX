let myCharger = Charger(100)
let myMacBook = MacBook(charger: myCharger, mAhPerHour: 90, currentBatteryCapacity: 500, maxBatteryCapacity: 1000)

myMacBook.chargeBattery(charger: myCharger)


protocol Portable {
    
}

struct Bag {
    private var items: [Portable] = []
    
    mutating func put(item: Portable) {
        items.append(item)
    }

}

var gucciBag = Bag()
gucciBag.put(item: myCharger)
gucciBag.put(item: myMacBook)
