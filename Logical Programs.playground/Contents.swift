import UIKit

/// Find Second Largest Element
func findSecondLargestElement(arr: [Int]) -> Int? {
    guard arr.count >= 2 else {
        return nil
    }

    var largest = arr[0]
    var secondLargest = 0
    
    for num in arr {
        if num > largest {
            secondLargest = largest
            largest = num
        }else if num != largest && (secondLargest == 0 || num > secondLargest) {
            secondLargest = num
        }
    }
    return secondLargest
}
var array = [99, 33, 44, 11, 66, 55, 77, 22]
//print("\(findSecondLargestElement(arr: array)!)")


/// Reverse Integer With Out Converting String
func reverseInteger(element: Int) -> Int{
    var number = element
    var reminder = 0
    var reverse = 0
    while number != 0 {
        reminder = number % 10
        reverse = reverse * 10 + reminder
        number = number / 10
    }
    return reverse
}


/// Swap Value Without Using Any Variable
func SwapValue() -> String{
    var a = 10
    var b = 12

    a = a + b
    b = a - b
    a = a - b

    return "Swapped values: a = \(a), b = \(b)"
}


/// Find The Anagram String
func anagramString(firstStr: String, secondStr: String) -> String {
    var message = ""
    var firstString = firstStr.sorted()
    var secondString = secondStr.sorted()
    if firstString == secondString {
        message = "Anagram String"
    }else{
        message = "Not Anagram String"
    }
    return message
}


/// Find Reverse String
func reverseString(str: String) -> String {
    var result = ""
    for i in str {
        result = "\(i)" + result
    }
    return result
}


/// Find Missing Element From Array
func findMissingElements(array: [Int]) -> [Int] {
    let sortedArray = array.sorted()
    var missingElements = [Int]()
    var currentNumber = sortedArray.first ?? 1
    
    for num in sortedArray {
        while currentNumber < num {
            missingElements.append(currentNumber)
            currentNumber += 1
        }
        currentNumber += 1
    }
    return missingElements
}

let numberz = [1, 2, 4, 7, 9]
let missingElements = findMissingElements(array: numberz)
print(missingElements)


/// Find The Given String is Palindrome or Not
func palindromeString(str: String) -> String {
    var result = ""
    var org = str
    var message = ""
    for i in str {
        result = "\(i)" + result
    }
    if org == result {
        message = "Palindrome String"
    }else{
        message = "Not Palindrome String"
    }
    return message
}


/// Print Fibonacci Series With Recursion
func recursion(n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return recursion(n: n - 1) + recursion(n: n - 2)
    }
}
//for i in 1...10{
//    print(recursion(n: i))
//}


/// Print Fibonacci Series Without Recursion
func fibonacci(){
    var n1 = 0
    var n2 = 1
    var nR = 0
    for _ in 0...10{
        nR = n1
        n1 = n2
        n2 = nR + n2
        print(n1)
    }
}


/// Find Even Numbers in A List
func evenNumber(){
    let list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    for even in list{
        if even % 2 == 0{
            print(even)
        }
    }
}


/// Find Prime Number From N Number
func primeNum(num : Int){
    var flag = true
    for i in 2..<num{
        if num % i == 0{
            flag = false
        }
    }
    if flag == true{
        print("\(num) is Prime Number")
    }else{
        print("\(num) is not Prime Number")
    }
}


/// Getting Square Root of Given Number
func findSquareRoot(number: Double) -> Double {
    var guess = number / 2.0
    var lastGuess = 0.0
    
    while guess != lastGuess {
        lastGuess = guess
        guess = (guess + number / guess) / 2.0
    }
    return guess
}
let number = 64.0
let squareRoot = findSquareRoot(number: number)
//print("The square root of \(number) is \(squareRoot)")


/// Two Different Logic To Find All Duplicate Number In An Array
func findDuplicates(array: [Int]) -> [Int] {
    var counts = [Int: Int]()
    var duplicates = [Int]()
    for num in array {
        counts[num, default: 0] += 1
    }
    for (key, value) in counts {
        if value > 1 {
            duplicates.append(key)
        }
    }
    return duplicates
}
let numbers = [1, 2, 3, 4, 5, 2, 4, 6, 7, 3]
let duplicates = findDuplicates(array: numbers)
//print(duplicates)


func duplicateNum(numbers: [Int]){
    var numberSet = Set<Int>()
    var duplicates = Set<Int>()
    for number in numbers {
        if numberSet.contains(number) {
            duplicates.insert(number)
        } else {
            numberSet.insert(number)
        }
    }
    print(duplicates)
}
//duplicateNum(numbers: [1, 2, 3, 4, 5, 5, 6, 7, 8, 9])


/// Find Pairs Whose Sum
func findPairsWithSum100(array: [Int]) -> [(Int, Int)] {
    var complementDict = [Int: Int]()
    var pairs = [(Int, Int)]()
    
    for num in array {
        let complement = 100 - num
        if let count = complementDict[complement], count > 0 {
            pairs.append((num, complement))
            complementDict[complement] = count - 1
        } else {
            complementDict[num, default: 0] += 1
        }
    }
    return pairs
}
//let number = [80, 60, 10, 50, 30, 100, 0, 50]
//let pairs = findPairsWithSum100(array: number)
//print(pairs)
