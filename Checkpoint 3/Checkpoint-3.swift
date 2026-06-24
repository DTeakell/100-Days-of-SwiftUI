// Name: Dillon Teakell
// File: Checkpoint-3
// Date: 6-24-26
//
// Desc: FIZZBUZZ

import Foundation
import Playgrounds

#Playground {
    for i in 1...100 {
        if (i % 3 == 0 && i % 5 == 0) {
            print("FIZZBUZZ")
        } else if (i % 3 == 0) {
            print("FIZZ")
        } else if (i % 5 == 0) {
            print("BUZZ")
        } else {
            print(i)
        }
    }
}
