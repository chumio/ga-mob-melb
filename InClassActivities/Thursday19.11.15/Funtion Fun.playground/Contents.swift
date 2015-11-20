//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"


func helloWorld(){
    print("Hello World")
}

func helloWorldFor(name: String) {
    print("Hello \(name)")
    
}
helloWorldFor("Tony")


for i in 1...20 {
    helloWorldFor(String(i))

}

let cities = ["New york","Sydney","Melbourne"]

for city in cities{helloWorldFor(city)
}


func sayHelloToMyMum(nameOfMum: String, andToDad: String){
    print("Hi \(nameOfMum) and \(andToDad)")
    
}

sayHelloToMyMum("Alice", andToDad: "Bob")

sayHelloToMyMum("Ines", andToDad: "Edgie")

var myGlobal = "Global"


// global variables are variables that are created outside a function. These variables can
// be called by any functions




func getThSumOfTwoNumbers(firstNum: Int, secondNum andThe: Int) -> Int {
    
    let result = firstNum + andThe
    return result
    
    
}

let result = getThSumOfTwoNumbers(10, secondNum: 5)
print (result)



