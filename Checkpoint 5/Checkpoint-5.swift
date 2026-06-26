// Name: Dillon Teakell
// File: Checkpoint-5.swift
// Date: 6-26-26
//
// Desc: Given an array of integers:
// 1.) Filter all even numbers
// 2.) Sort the array in ascending order
// 3.) Map the strings to the number


import Foundation
import Playgrounds

#Playground {
    
    // Array
    let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
    
    _ = luckyNumbers.filter { $0 % 2 != 0 }
                    .sorted { $0 < $1 }
                    .map { print("\($0) is a lucky number!") }
    
}
