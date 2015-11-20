//: Playground - noun: a place where people can play

import UIKit



knockknock()

func knockknock() {
    print("Who's there?")
    
}

knockknock()


// That was fun! Let's joke around and knock a few times more
// Write a function knockMultipleTimes that accepts one paramter
// That parameter will be an int that let's us specify how many times we want to knock
// Within the function we have a loop that runs x ammount of times that calls the knock knock function
func knockMultipleTimes(numberOfTimes : Int) {
    for var i = 1 ; i <= numberOfTimes ; i++ {
        knockknock()
    }
    
}

knockMultipleTimes(10)

// Okay let's answer before the person behind the door goes nuts!
// We will write a replyWhoIsHere function that accepts 2 parameters
// Parameter one will be a firstname (String), and parameter two will be the homeCountry (also String)
// The function will just print "It's me, {firstname}, from {homeCountry}"
func replyWhoIsHere(firstname : String, homeCountry : String) {
    print("It's me, \(firstname), from \(homeCountry)")
}
replyWhoIsHere("Sam", homeCountry: "Andorra")

// Cool that worked! Let's say we want to reply with our age instead of home country!
// We'll create a function calculateAge that accepts one parameter that will be yearOfBirth (Int)
// The function will return the age (Int)
// Use this code to do the calculation, don't worry about the code itself for now if you don't want to
// Just copy and paste it in your function

func calculateAge(yearOfBirth : Int) -> Int {
    let currentDate = NSDate()
    let currentCalendar = NSCalendar.currentCalendar()
    let currentYear = currentCalendar.component(NSCalendarUnit.Year, fromDate: currentDate)
    let age = currentYear - yearOfBirth
    return age
}
let myage = calculateAge(1998)
print(myage)


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
func telNameAndAge(name : String, yearOfBirth : Int) {
    let age = calculateAge(yearOfBirth)
    print("\(name) my age is \(age)")
    
}

telNameAndAge("sam", yearOfBirth: 1889)


// Call knock knock
knockknock()
knockMultipleTimes(5)
replyWhoIsHere("sam", homeCountry: "Australia")
telNameAndAge("sam", yearOfBirth: 1970)

// Call knockMultipleTimes

// Call replyWhoIsHere

// Call tellNameAndAge
