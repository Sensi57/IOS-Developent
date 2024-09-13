import Foundation


//Ex1
let firstName: String = "Iphone"
let lastName: String = "IOS"
let birthYear: Int = 2010
let height: Double = 1.42
let isStudent: Bool = true


//Bonus 
let currentYear: Int = 2024
let age: Int = currentYear - birthYear

//Ex2

let hobby: String = "swoft codding"
let numberOfHobbies: Int = 5
let favoriteNumber: Int = 7
let isHobbyCreative: Bool = true

let futureGoals: String = "In the future, I want to become a professional iOS developer."

let lifeStory: String = """
My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). 
I am \(isStudent ? "a student" : "not a student").  I like \(hobby), which is \(isHobbyCreative ? "a creative" : "not a creative") hobby. 
I have \(numberOfHobbies) hobbies, and my favorite number is \(favoriteNumber). 
\(futureGoals)
"""

//Conclusion 
print(lifeStory)