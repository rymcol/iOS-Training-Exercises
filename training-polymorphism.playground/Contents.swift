//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Shape {
    var area: Double?
    
    
    
    func calculateArea() {
        self.area = nil
    }
    
    func printArea() {
        if area != nil {
            print("The area is: \(area)")
        }
    }
    
}


class Rectangle: Shape {
    var width = 1.0
    var height = 1.0
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    override func calculateArea() {
        self.area = self.width * self.height
    }
}

class Circle: Shape {
    var radius: Double
    
    init(rad: Double) {
        self.radius = rad
    }
    
    override func calculateArea() {
        self.area = 3.14159 * self.radius * self.radius
    }
}

var circle = Circle(rad: 1.0)
circle.calculateArea()
if let circleArea = circle.area {
    print(circleArea)
}

class Enemy {
    var hp = 100
    var attackPower = 10
    
    
    init(hp: Int, attack: Int) {
        self.hp = hp
        self.attackPower = attack
    }
    
    func defendAttack(incomingAttackPower: Int) {
        self.hp -= incomingAttackPower
        
    }
}

class angryTroll: Enemy {
    var immunity = 10
    
    override func defendAttack(incomingAttackPower: Int) {
        if incomingAttackPower <= immunity {
            self.hp += 1 //++ is being depreciated in Swift 3 in favour of += 1
        } else {
            super.defendAttack(incomingAttackPower)
        }
    }
    
    
}

