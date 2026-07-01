// Name: Dillon Teakell
// File: checkpoint-7.swift
// Date: 7-1-26
/* Desc: Create a class hierarchy of Animals
 - Create Animal class with a numberOfLegs property
 - Create a Dog subclass of Animal with a speak() method that prints a bark. With each subclass of Dog making different barks
 - Create a subclass Corgi and Poodle with parent Dog
 - Make subclass Cat, with property isTame, with child classes Persian and Lion. Make all have a speak() method, too.
*/

import Foundation
import Playgrounds

#Playground {
    // Animal
    class Animal {
        var numberOfLegs: Int
        
        init (numberOfLegs: Int) {
            self.numberOfLegs = numberOfLegs
        }
        
        func speak() {
            print("*Random animal sound*")
        }
    }
    
    
    // Dog
    class Dog: Animal {
        override func speak() {
            print("Bark!")
        }
    }
    
    // Corgi
    class Corgi: Dog {
        override func speak() {
            print("Bark, bark!")
        }
    }
    
    // Poodle
    class Poodle: Dog {
        override func speak() {
            print("Bark, bark, bark, bark!")
        }
    }
    
    
    // Cat
    class Cat: Animal {
        var isTame: Bool
        
        init(numberOfLegs: Int, isTame: Bool) {
            self.isTame = isTame
            super.init(numberOfLegs: numberOfLegs)
        }
        
        override func speak() {
            print("Meow!")
        }
    }
    
    // Persian
    class Persian: Cat {
        override func speak() {
            print("Meow!")
        }
    }
    
    // Lion
    class Lion: Cat {
        override func speak() {
            print("Roar!!!")
        }
    }
    
    
    let myDog = Dog(numberOfLegs: 4)
    myDog.speak()
    
    let myCat = Cat(numberOfLegs: 4, isTame: true)
    myCat.speak()
    
    let myCorgi = Corgi(numberOfLegs: 4)
    
    let myLion = Lion(numberOfLegs: 4, isTame: false)
    myLion.speak()
    
    
    
    
}
