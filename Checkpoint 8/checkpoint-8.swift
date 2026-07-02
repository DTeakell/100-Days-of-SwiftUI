// Name: Dillon Teakell
// Date: 7-2-26
// File: checkpoint-8.swift
// Desc: Create a protocol that describes a building:
/*
 - Property storing how many rooms it has
 - Property storing the cost
 - Propery storing the name of the estate agent
 - Method for printing the summary
 - Create two structs, House and Office
 */

import Foundation
import Playgrounds

#Playground {
    protocol Building {
        var numberOfRooms: Int { get }
        var cost: Int { get set }
        var nameOfEstateAgent: String { get set }
        
        func printSummary()
    }
    
    struct House: Building {
        let numberOfRooms: Int
        var cost: Int
        var nameOfEstateAgent: String
        
        func printSummary() {
            print("Building Summary \n")
            print("Number of Rooms: \(numberOfRooms)")
            print("Cost: $\(cost)")
            print("Name of Esate Agent: \(nameOfEstateAgent)")
        }
    }
    
    struct Office: Building {
        let numberOfRooms: Int
        var cost: Int
        var nameOfEstateAgent: String
        
        func printSummary() {
            print("Building Summary \n")
            print("Number of Rooms: \(numberOfRooms)")
            print("Cost: $\(cost)")
            print("Name of Esate Agent: \(nameOfEstateAgent)")
        }
    }
    
    let myHouse = House(numberOfRooms: 4, cost: 150000, nameOfEstateAgent: "Jaqueline Gibbons")
    
    let myOffice = Office(numberOfRooms: 25, cost: 250000, nameOfEstateAgent: "Daniel Harding")
    
    myHouse.printSummary()
}
