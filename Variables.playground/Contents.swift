//: Playground - noun: a place where people can play

import UIKit

var oddNumbers = [Int]()

for number in 0 ..< 100 {
    if number % 2 != 0 {
        oddNumbers.append(number)
    }
}

var sums = [Int]()

for number in oddNumbers {
    sums.append(number + 5)
}

var x = 0

repeat {
    print("The sum is: \(sums[x])")
    x += 1
} while x < sums.count

print(sums)