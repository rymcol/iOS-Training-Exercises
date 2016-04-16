//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var eyeColor = "Blue"
    var name: String
    var speed = "10mph"
    
    init(name: String) {
        self.name = name
    }
    
    func catchPhrase() -> String {
        return "Hi, I'm \(self.name)!"
    }
    
    
}


var John = Person(name: "John")

class Animorph: Person {
    
    var animalType: String
    
    init(type: String, name: String) {
        self.animalType = type
        super.init(name: name)
    }
    
    override func catchPhrase() -> String {
        return "Hi, I'm \(self.name) and I'm a \(self.animalType)"
    }
    
}

var Doug = Animorph(type: "Dog", name: "Doug")

print(Doug.eyeColor)

print(John.catchPhrase())
print(Doug.catchPhrase())

