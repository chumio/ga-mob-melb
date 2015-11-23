//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
//: Playground - noun: a place where people can play

import UIKit
import Foundation


// Crate a function called knockknock that will print out "Who's there?" when called
// That was fun! Let's joke around and knock a few times more
// Write a function knockMultipleTimes that accepts one paramter
// That parameter will be an int that let's us specify how many times we want to knock
// Within the function we have a loop that runs x ammount of times that calls the knock knock function
// Okay let's answer before the person behind the door goes nuts!
// We will write a replyWhoIsHere function that accepts 2 parameters
// Parameter one will be a firstname (String), and parameter two will be the homeCountry (also String)
// The function will just print "It's me, {firstname}, from {homeCountry}"
// Cool that worked! Let's say we want to reply with our age instead of home country!
// We'll create a function calculateAge that accepts one parameter that will be yearOfBirth (Int)
// The function will return the age (Int)
// Use this code to do the calculation, don't worry about the code itself for now if you don't want to
// Just copy and paste it in your function
/*
let currentDate = NSDate()
let currentCalendar = NSCalendar.currentCalendar()
let currentYear = currentCalendar.component(NSCalendarUnit.Year, fromDate: currentDate)
let age = currentYear - yearOfBirth
*/
// Return the age at the end of the function
// Create a function tellNameAndAge that has two parameters
// Parameter one is the name (String), parameter two is the yearOfBirth(Int)
// The function will have one var: age, you will call the calculateAge function and store the return value in that var
// After that you will print a line that states "{name}, my age is {age}", where {age} is the var of course!
// Call knock knock
// Call knockMultipleTimes
// Call tellNameAndAge



// Crate a function called knockknock that will print out "Who's there?" when called
func knockknock(){
   print("Who's there?")
    
}
knockknock()


// That was fun! Let's joke around and knock a few times more

// Write a function knockMultipleTimes that accepts one paramter
// That parameter will be an int that let's us specify how many times we want to knock
// Within the function we have a loop that runs x ammount of times that calls the knock knock function

func knockMultipleTimes (HowManyTimes:Int){
    for var knock : Int=1;knock <= HowManyTimes; ++knock{
      print("you have knocked \(knock) times")
    }
}

knockMultipleTimes(3)

// Okay let's answer before the person behind the door goes nuts!
// We will write a replyWhoIsHere function that accepts 2 parameters
// Parameter one will be a firstname (String), and parameter two will be the homeCountry (also String)
// The function will just print "It's me, {firstname}, from {homeCountry}"

func replyWhoIsHere (firstName:String,fromhomeCountry:String){
    print("it's me,\(firstName), from \(fromhomeCountry).")
    
}

replyWhoIsHere("Charlie", fromhomeCountry: "Malta")

replyWhoIsHere("Charlie", fromhomeCountry: "Australia")


// Cool that worked! Let's say we want to reply with our age instead of home country!

// We'll create a function calculateAge that accepts one parameter that will be yearOfBirth (Int)


func calculateAge(yearOfBirth : Int) -> Int {
    let CurrentYear : Int = 2015
    let age = CurrentYear - yearOfBirth
       print("Your age is \(age)")
     return age
}

calculateAge(1970)






// The function will return the age (Int)
// Use this code to do the calculation, don't worry about the code itself for now if you don't want to
// Just copy and paste it in your function
/*
let currentDate = NSDate()
let currentCalendar = NSCalendar.currentCalendar()
let currentYear = currentCalendar.component(NSCalendarUnit.Year, fromDate: currentDate)
let age = currentYear - yearOfBirth
*/
// Return the age at the end of the function

// Create a function tellNameAndAge that has two parameters
func telNameAndAge (Name : String, YearOfBirth : Int){
    let age : Int = calculateAge(YearOfBirth)
    print("\(Name) you are  \(age)")
    
}
telNameAndAge("Adrian", YearOfBirth: 1975)




// Parameter one is the name (String), parameter two is the yearOfBirth(Int)
// The function will have one var: age, you will call the calculateAge function and store the return value in that var
// After that you will print a line that states "{name}, my age is {age}", where {age} is the var of course!
// Call knock knock
// Call knockMultipleTimes
// Call tellNameAndAge
//: [Next](@next)
