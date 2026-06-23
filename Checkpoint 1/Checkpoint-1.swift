// Name: Dillon Teakell
// File: Checkpoint-1
// Date: 6-23-26
//
// Desc: Convert temperature to a given unit and print result

import Foundation
import Playgrounds

#Playground {
    
    enum Unit: String {
        case fahrenheit = "Fahrenheit"
        case celsius = "Celsius"
    }
    
    let temperature: Double = 24.0
    
    // Prints and converts a temperature to a given unit. Does not return a value.
    func printAndConvert(temperature: Double, to unit: Unit) {
        
        var newTemperature: Double = 0
    
        switch unit {
        case .fahrenheit:
            newTemperature = (temperature * (9/5)) + 32
            print(String(format: "Temperature: %.1fºF", newTemperature))
        case .celsius:
            newTemperature = (temperature - 32) * (5/9)
            print(String(format: "Temperature: %.1fºC", newTemperature))
        }
    }
    
    printAndConvert(temperature: temperature, to: .fahrenheit)
}
