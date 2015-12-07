//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let bill = 195.00
var star : Int = 5
var percent : Double
var tip : Double
var total : Double = 1.0

for x in 1 ... 5{
    star = x
    if star == 5 {
        tip = bill * 0.25;
        total = bill + tip
    }
    else if star >= 3 {
        tip = bill * 0.15;
        total = bill + tip
    }
    else {
    
        tip = bill * 0.10;
        total = bill + tip
    }

    print("Total for this bill comes to \(total) that includes a \(tip) tip based on you \(star) start rating")
}

