//Ass 
//Task 1
let fruits = ["Apple", "Banana", "Cherry", "Date"]
print(fruits[2]) 

//Task 2
var favoriteNumbers: Set<Int> = [1, 2, 3, 5]
favoriteNumbers.insert(4) 
print(favoriteNumbers) 

//Task 3

let programmingLanguages = ["Swift": 2014, "Python": 1991, "Java": 1995]
print(programmingLanguages["Swift"]!) // Access and print the release year of Swift

//Task 4

let colors = ["Red", "Green", "Blue", "Yellow"]
colors[1] = "Purple" 
print(colors) 

//Task 1

let setA: Set<Int> = [1, 2, 3, 4]
let setB: Set<Int> = [3, 4, 5, 6]
let intersection = setA.intersection(setB) // Find the intersection
print(intersection) // Print the intersection

//Task 2
var studentScores = ["Asan": 80, "Sama": 85, "Ali": 88]
studentScores["Ali"] = 95 // Update the score of Alice
print(studentScores) // Print the updated dictionary

//Task 3

let array1 = ["apple", "banana"]
let array2 = ["cherry", "date"]
let mergedArray = array1 + array2 
print(mergedArray) 

//Task 1
let countryPopulations = ["USA": 1234566, "Kazakhstan": 1234556442, "China": 1439323776]
countryPopulations["Russia"] = 212559417 // Add a new country
print(countryPopulations) // Print the updated dictionary

//Task 2

let setC: Set<String> = ["cat", "dog"]
let setD: Set<String> = ["dog", "mouse"]
let unionSet = setC.union(setD) 
let finalSet = unionSet.subtracting(setD) 
print(finalSet) 
