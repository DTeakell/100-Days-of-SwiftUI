// Name: Dillon Teakell
// File: checkpoint-9.swift
// Date: 7-3-26
/* Desc: Write a function that accepts an optional array of integers and returns one integer randomly.
 - If the array is missing, or empty, return a new random number in the range 1 - 100
 - Write the funtion in a single line of code
 */

import Foundation
import Playgrounds

#Playground {
    let arrayOfNumbers: [Int]? = [2, 6, 7, 8, 12, 55, 100, 233]
    let emptyArray: [Int]? = nil
    
    func returnRandomNumber(in array: [Int]?) -> Int {
        return array?.randomElement() ?? Int.random(in: 1...100)
    }
    
    returnRandomNumber(in: arrayOfNumbers)
    returnRandomNumber(in: emptyArray) 
}
