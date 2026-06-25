// Name: Dillon Teakell
// File: Checkpoint-4.swift
// Date: 6-25-26
//
// Desc: Get an integer (1-10,000) and return the square root (must calculate manually. Cannot use .sqrt())

import Foundation
import Playgrounds

#Playground {
    
    // Error cases
    enum SquareRootError: Error {
        case outOfBounds
        case noSquareRoot
    }
    
    // Array of test numbers
    let testNumbers: [Int] = [4, 6, 9, 16, 20, 25, 100, 125, 567, 1250, 4500, 7642, 8000, 9000, 10002]
    
    
    func getSquareRoot(of number: Int) throws -> Int {
        
        var squareRoot: Int = 0
        
        // Check if number is out of bounds
        if (number < 0 || number > 10000) {
            throw SquareRootError.outOfBounds
        }
        
        // Square root calculation
        for i in 1...number {
            if (i * i == number) {
                squareRoot = i
                break
            }
        }
        
        // Throw error if there is no square root
        if (squareRoot == 0) {
            throw SquareRootError.noSquareRoot
        }
        
        return squareRoot
    }
    
    // Test cases
    for value in testNumbers {
        do {
            var squareRoot: Int = try getSquareRoot(of: value)
            print("The square root of \(value) is \(squareRoot)")
        } catch SquareRootError.noSquareRoot {
            print("There is no integer square root associated with \(value)")
        } catch SquareRootError.outOfBounds {
            print("The number \(value) is out of bounds (1 - 10,000).")
        }
    }
}

