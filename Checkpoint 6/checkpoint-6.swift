// Name: Dillon Teakell
// File: checkpoint-6.swift
// Date: 6-30-26
/* Desc: Create a car struct and store information:
 - Model
 - Number of Seats
 - Current Gear
 - Method to change gears (do not allow more than 7 gears)
 
*/

import Foundation
import Playgrounds

#Playground {
    
    enum CarError: Error {
        case gearOutOfRange
    }
    
    enum GearChangeDirection: String {
        case up = "Up"
        case down = "Down"
    }
    
    struct Car {
        let model: String
        let numberOfSeats: Int
        let numberOfGears: Int
        private(set) var currentGear: Int
        
        mutating func changeGear(direction: GearChangeDirection) throws {
            
            switch direction {
            // Gear up
            case .up:
                currentGear += 1
                if (currentGear > 7) {
                    throw CarError.gearOutOfRange
                }
            
            // Gear down
            case .down:
                currentGear -= 1
                if (currentGear < 1) {
                    throw CarError.gearOutOfRange
                }
            }
        }
    }
    
    do {
        var myCar = Car(model: "Honda Civic", numberOfSeats: 5, numberOfGears: 7, currentGear: 7)
        try myCar.changeGear(direction: .up)
        print("Current Gear: \(myCar.currentGear)")
    } catch CarError.gearOutOfRange {
        print("Gear out of range.")
    }
    
}
