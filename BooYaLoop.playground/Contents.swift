//: Playground - noun: a place where people can play

import UIKit

var boo = "Boo"
var ya = "Ya"

for index in 1...200 {
    if index % 3 == 0 {
        print("\(boo)")
    } else if index % 5 == 0 {
        print("\(ya)")
    } else if index % 3 == 0 && index % 5 == 0 {
        print("\(boo)\(ya)")
    }
}