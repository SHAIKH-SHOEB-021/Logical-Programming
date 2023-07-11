import UIKit

///1 Find Second Largest Element
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
print("\(findSecondLargestElement(arr: array)!)")


///2 Reverse Integer With Out Converting String
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


///3 Swap Value Without Using Any Variable
func SwapValue() -> String{
    var a = 10
    var b = 12

    a = a + b
    b = a - b
    a = a - b

    return "Swapped values: a = \(a), b = \(b)"
}


///4 Reverse String
func reverseString(str: String) -> String {
    var result = ""
    for i in str {
        result = "\(i)" + result
    }
    return result
}


///5 Find The Anagram String
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


///6 Find The Given String is Palindrome or Not
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


///10 Find Even Numbers in A List
func evenNumber(){
    let list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    for even in list{
        if even % 2 == 0{
            print(even)
        }
    }
}


///8 Find Prime Number From N Number
//func primeNum(num : Int){
//    var flag = true
//    for i in 2..<num{
//        if num % i == 0{
//            flag = false
//        }
//    }
//    if flag == true{
//        print("\(num) is Prime Number")
//    }else{
//        print("\(num) is not Prime Number")
//    }
//}


///4 Print Fibonacci Series With Recursion
func fibonacci(n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return fibonacci(n: n - 1) + fibonacci(n: n - 2)
    }
}
//for i in 1...10{
//    print(fibonacci(n: i))
//}

///5 Print Fibonacci Series Without Recursion
func recursion(){
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

///8 Find Prime Number From N Number
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

///9 Find Missing Element From Array
func missingElement(number : [Int]){
    for i in 1...number.max()!{
        if !number.contains(i){
            print(i)
        }
    }
}
//missingElement(number: [1, 2, 4, 6, 7, 9, 12])

///10 Getting Square Root of Given Number
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

///11 Two Different Logic To Find All Duplicate Number In An Array
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


func starPatternLeft(){
    let num = 5
    for i in 1...num{
        for _ in 0..<(num-i){
            print(" ", terminator: "")
        }
        for _ in 0..<i{
            print("*", terminator: "")
        }
        print("")
    }
    for a in 1...num{
        for _ in 0..<a{
            print(" ", terminator: "")
        }
        for _ in 0..<(num-a){
            print("*", terminator: "")
        }
        print("")
    }
    
}

func starPatterRight(){
    for a in 1...5{
        for _ in 1...a{
           print("*", terminator: "")
        }
        print("")
    }
    for i in 1...5{
        for _ in 0..<(5-i){
            print("*", terminator: "")
        }
        print("")
    }
}
