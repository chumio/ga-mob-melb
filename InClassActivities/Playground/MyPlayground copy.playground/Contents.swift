//: Playground - noun: a place where people can play

import UIKit


var str = "Hello, playground"

var myinteger = 8

let myconstant = "Charlie"

let a = 3

let b = 5

let c = a+b

let mycolour = "Blue"


var dayOfWeek : String? = "Monday"

var myBoolean : Bool = false



if(!myBoolean){
    print(c)
    
} else {
    print("dayofWeek has value")
}

var myOptional : Int? //Always declare optionals with a ?

myOptional = 10
let result = myOptional! + 7

if(myOptional != nil){ //Always check if it has a value or not
 print(myOptional!) //Always use the ! to unwrap. you are basicaly telling swift I need acces to this value

}


let cities = [“new york”,“london”,”Melbourne"]
for mycity in cities {
}
