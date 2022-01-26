//
//  MacBook.swift
//  Protocol
//
//  Created by Jinwook Huh on 2022/01/26.
//

import Foundation

struct MacBook: Portable {
    var charger: Chargeable
    
    let mAhPerHour: Double
    let currentBatteryCapacity: Double
    let maxBatteryCapacity: Double
    
    func chargeBattery(charger: Chargeable) {
        let converted = charger.convert(chargeablemAhPerHour: mAhPerHour)
        let chargeableBatteryCapacity = maxBatteryCapacity - currentBatteryCapacity
        let hour = (chargeableBatteryCapacity / converted).rounded(.up)
        print(hour)
    }
}
