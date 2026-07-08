//
//  ContentView.swift
//  WeSplit
//
//  Created by Dillon Teakell on 7/6/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount: Double = 0
    @State private var numberOfPeople = 1
    @State private var selectedTipPercentage = 10
    let tipPercentages = [0, 10, 15, 20, 25]
    let currencyCode = Locale.current.currency?.identifier ?? "USD"
    var tipAmount: Double {
        let people = Double(numberOfPeople)
        let selectedTip = Double(selectedTipPercentage)
        let tip = ((checkAmount * selectedTip) / 100) / people
        return tip
    }
    
    var checkTotal: Double {
        let people = Double(numberOfPeople)
        let selectedTip = Double(selectedTipPercentage)
        let tip = ((checkAmount * selectedTip) / 100) / people
        let total = checkAmount + tip
        return total
    }
    
    @FocusState private var amountIsFocused: Bool
    
    
    var body: some View {
        NavigationStack {
            Form {
                // Check amount field
                Section("Check Amount") {
                    TextField("Please enter check amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                
                // Tip Percentage
                Section("Tip Percentage") {
                    Picker("Tip", selection: $selectedTipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                // Number of People
                Section("Number of People") {
                    Stepper ("^[\(numberOfPeople) People](inflect: true)", value: $numberOfPeople, in: 1...100)
                }
                
                // Tip Amount
                Section("Tip Amount") {
                    Text(tipAmount, format: .currency(code: currencyCode))
                }
                
                // Total amount
                Section("Total") {
                    Text(checkTotal, format: .currency(code: currencyCode))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
