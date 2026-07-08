//
//  ContentView.swift
//  Unit-Convert
//
//  Created by Dillon Teakell on 7/7/26.
//

import SwiftUI

struct ContentView: View {
    
    // Enum for Units
    enum Units: String {
        case milliliters = "Milliliters"
        case liters = "Liters"
        case cups = "Cups"
        case pints = "Pints"
        case gallons = "Gallons"
    }
    
    // Number of units
    @State var numberOfUnits: Double = 0
    
    // Properties to store the type of units to and from
    @State var unitsToConvertFrom: Units = .milliliters
    @State var unitsToConvertTo: Units = .cups
    
    
    // Conversion calculation
    var convertedUnits: Double {
        switch unitsToConvertTo {
        case .milliliters:
            switch unitsToConvertFrom {
            case .milliliters:
                numberOfUnits * 1
            case .liters:
                numberOfUnits * 1000
            case .cups:
                numberOfUnits * 240
            case .pints:
                numberOfUnits * 473.18
            case .gallons:
                numberOfUnits * 3785.41
            }
            
        case .liters:
            switch unitsToConvertFrom {
            case .milliliters:
                numberOfUnits * 1000
            case .liters:
                numberOfUnits * 1
            case .cups:
                numberOfUnits * 0.24
            case .pints:
                numberOfUnits * 0.473
            case .gallons:
                numberOfUnits * 3.785
            }
            
        case .cups:
            switch unitsToConvertFrom {
            case .milliliters:
                numberOfUnits * 0.0042
            case .liters:
                numberOfUnits * 4.167
            case .cups:
                numberOfUnits * 1
            case .pints:
                numberOfUnits * 2
            case .gallons:
                numberOfUnits * 16
            }
            
        case .pints:
            switch unitsToConvertFrom {
            case .milliliters:
                numberOfUnits * 0.00211
            case .liters:
                numberOfUnits * 2.113
            case .cups:
                numberOfUnits * 0.5
            case .pints:
                numberOfUnits * 1
            case .gallons:
                numberOfUnits * 8
            }
            
        case .gallons:
            switch unitsToConvertFrom {
            case .milliliters:
                numberOfUnits / 3785.41
            case .liters:
                numberOfUnits / 3.785
            case .cups:
                numberOfUnits / 16
            case .pints:
                numberOfUnits / 4
            case .gallons:
                numberOfUnits / 1
            }
            
        }
    }
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Convert From") {
                    Picker("Units", selection: $unitsToConvertFrom) {
                        Text(Units.milliliters.rawValue).tag(Units.milliliters)
                        Text(Units.liters.rawValue).tag(Units.liters)
                        Text(Units.cups.rawValue).tag(Units.cups)
                        Text(Units.pints.rawValue).tag(Units.pints)
                        Text(Units.gallons.rawValue).tag(Units.gallons)
                    }
                }
                
                Section("To") {
                    Picker("Units", selection: $unitsToConvertTo) {
                        Text(Units.milliliters.rawValue).tag(Units.milliliters)
                        Text(Units.liters.rawValue).tag(Units.liters)
                        Text(Units.cups.rawValue).tag(Units.cups)
                        Text(Units.pints.rawValue).tag(Units.pints)
                        Text(Units.gallons.rawValue).tag(Units.gallons)
                    }
                }
                
                Section("Number of Units") {
                    TextField("Enter Number of Units", value: $numberOfUnits, format: .number)
                }
                
                Section("Convertion") {
                    Text("\(convertedUnits.formatted(.number)) \(unitsToConvertTo.rawValue)")
                }
                
                
            }
            .navigationTitle("Unit Conversion")
        }
    }
}

#Preview {
    ContentView()
}
