//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var lotteryWinnings: Int?

class Car {
    var model: String?
}

var vehicle: Car?

print(vehicle?.model)

vehicle = Car()

vehicle?.model = "Bronco"

if let v = vehicle, m = v.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()

if let carArray = cars where carArray.count > 0 {
    //do this if there is an array of cars that also contans stuff
}

class Person {
    var age: Int!
    
    func setAge(newAge: Int) {
        self.age = newAge
    }
    
    
}

var jack = Person()

class Dog {
    var species: String
    
    init(type: String) {
        self.species = type
    }
}

var lab = Dog(type: "Black Lab")

print(lab.species)

