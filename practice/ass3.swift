//Task 1.0 
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}

//Task 2.0 
func isPrime(_ number: Int) -> Bool {
    guard number > 1 else { return false }
    for i in 2..<Int(sqrt(Double(number))) + 1 {
        if number % i == 0 {
            return false
        }
    }
    return true
}

// Printing all prime numbers from 1 to 100
for number in 1...100 {
    if isPrime(number) {
        print(number)
    }
}

// Task 3.0
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

print("Enter a temperature value:")
if let input = readLine(), let value = Double(input) {
    print("Enter the unit (C, F, K):")
    if let unit = readLine()?.uppercased() {
        switch unit {
        case "C":
            print("\(value)C = \(celsiusToFahrenheit(value))F, \(celsiusToKelvin(value))K")
        case "F":
            print("\(value)F = \(fahrenheitToCelsius(value))C, \(celsiusToKelvin(fahrenheitToCelsius(value)))K")
        case "K":
            print("\(value)K = \(celsiusToKelvin(kelvinToCelsius(value)))C, \(celsiusToFahrenheit(kelvinToCelsius(value)))F")
        default:
            print("Invalid unit")
        }
    }
}

// Task 4.0
var shoppingList: [String] = []

while true {
    print("1. Add item\n2. Remove item\n3. Show list\n4. Exit")
    if let choice = readLine() {
        switch choice {
        case "1":
            print("Enter item to add:")
            if let item = readLine() {
                shoppingList.append(item)
            }
        case "2":
            print("Enter item to remove:")
            if let item = readLine() {
                shoppingList.removeAll { $0 == item }
            }
        case "3":
            print("Current Shopping List:")
            for item in shoppingList {
                print(item)
            }
        case "4":
            exit(0)
        default:
            print("Invalid choice")
        }
    }
}

// Task 5.0
// Word frequency counter
print("Enter a sentence:")
if let sentence = readLine() {
    var wordCount: [String: Int] = [:]
    let words = sentence.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted)
    
    for word in words {
        if !word.isEmpty {
            wordCount[word, default: 0] += 1
        }
    }
    
    print("Word Frequencies:")
    for (word, count) in wordCount {
        print("\(word): \(count)")
    }
}

//Task 6

func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    var sequence = [0, 1]
    
    for i in 2..<n {
        sequence.append(sequence[i - 1] + sequence[i - 2])
    }
    
    return Array(sequence.prefix(n))
}

print(fibonacci(10))  

//Task 7
var students: [String: Double] = [:]
var totalScore: Double  = 0.0
var count: Int = 0

while true {
    print("Enter student name (or type 'exit' to finish):")
    if let name = readLine(), name.lowercased() != "exit" {
        print("Enter score:")
        if let scoreInput = readLine(), let score = Double(scoreInput) {
            students[name] = score
            totalScore += score
            count += 1
        }
    } else {
        break
    }
}

let average = count > 0 ? totalScore / Double(count) : 0

print("Average Score: \(average)")
for (name, score) in students {
    let status = score >= average ? "above" : "below"
    print("\(name): \(score) - \(status) average")
}

//Task 8
func isPalindrome(_ text: String) -> Bool {
    let cleaned = text.lowercased().replacingOccurrences(of: " ", with: "").filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

print(isPalindrome("ios or react"))  

//Task 9
func add(_ a: Double, _ b: Double) -> Double { return a + b }
func subtract(_ a: Double, _ b: Double) -> Double { return a - b }
func multiply(_ a: Double, _ b: Double) -> Double { return a * b }
func divide(_ a: Double, _ b: Double) -> Double? {
    return b != 0 ? a / b : nil
}

while true {
    print("Enter first number (or type 'exit' to quit):")
    if let input1 = readLine(), input1.lowercased() == "exit" {
        break
    }
    if let num1 = Double(input1) {
        print("Enter second number:")
        if let input2 = readLine(), let num2 = Double(input2) {
            print("Choose operation (+, -, *, /):")
            if let operation = readLine() {
                switch operation {
                case "+":
                    print("Result: \(add(num1, num2))")
                case "-":
                    print("Result: \(subtract(num1, num2))")
                case "*":
                    print("Result: \(multiply(num1, num2))")
                case "/":
                    if let result = divide(num1, num2) {
                        print("Result: \(result)")
                    } else {
                        print("Error: Division by zero")
                    }
                default:
                    print("Invalid operation")
                }
            }
        }
    }
}

// Task 10
func hasUniqueCharacters(_ text: String) -> Bool {
    var charSet = Set<Character>()
    for char in text {
        if charSet.contains(char) {
            return false
        }
        charSet.insert(char)
    }
    return true
}

print(hasUniqueCharacters("abcdefg"))  
print(hasUniqueCharacters("hello"))    
