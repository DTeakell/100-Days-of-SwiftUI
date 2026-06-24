// Name: Dillon Teakell
// File: Checkpoint-2
// Date: 6-24-26
//
// Desc: Create an array, print the number of items, and then print the number of unique items.

import Foundation
import Playgrounds

#Playground {
    
    // Create array of strings
    let arrayOfNames: [String] = ["Dillon", "Mya", "Dillon", "Jack", "Victor", "Fernando", "Lily", "Maple", "Ashton"]
    
    // Function to print the number of elements in the array, as well as the unique elements.
    // Takes in AnyHashable to allow for any data type that is Hashable to be used in the function.
    func printNumberOfElements(in array: [AnyHashable]) {
        // Print the number of elements
        print("Number of Elements: \(array.count)")
        
        let uniqueArray = Set<AnyHashable>(array)
        print("Number of Unique Elements: \(uniqueArray.count)")
    }
    
    // Call function
    printNumberOfElements(in: arrayOfNames)
    
}
