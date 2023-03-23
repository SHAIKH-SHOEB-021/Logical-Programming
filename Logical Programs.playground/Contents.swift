import UIKit

///1 Reverse String  Program Using Loop
func reverseStr(str : String){
    var result = ""
    for i in str {
        result = "\(i)" + result
    }
    print(result)
}

///2 Find String Palindrome or Not
func palindromeStr(str : String){
    var result = ""
    for i in str {
        result = "\(i)" + result
    }
    if str == result{
        print("Palindrome String")
    }else{
        print("Not Palindrome String")
    }
}

///Check Palindrome Number
func palindromeNum(){
    var num = 124
    let org = num
    var reminder = 0
    var reverse = 0
    while num != 0 {
        reminder = num % 10
        reverse = reverse * 10 + reminder
        num = num / 10
    }
    if reverse == org{
        print("Palindrome Number")
    }else{
        print("Not Palindrome Number")
    }
}

///3 Swap Value Without Using Any Variable
func swapValue(){
    var a = 10
    var b = 12
    (a, b) = (b, a)
    print("a = \(a)")
    print("b = \(b)")
}

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

///6 Find Even Numbers in A List
func evenNumber(){
    let list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    for even in list{
        if even % 2 == 0{
            print(even)
        }
    }
}

///7 Logic For Anagram Program
func anagram(fValue : String, sValue : String) -> Bool{
    let FV = fValue.sorted()
    let SV = sValue.sorted()
    return FV == SV
}
let Check = anagram(fValue: "Listen", sValue: "Silent")
if Check == true{
    //print("Anagram String")
}else{
    //print("Not Anagram String")
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


///12 Find The Second Largest Number In An Array Without Sorting
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
func findSecondLargestNumber(in array: [Int]) -> Int? {
    guard array.count >= 2 else {
        return nil // array is too small to have a second largest number
    }
    
    var largest = Int.min
    var secondLargest = Int.min
    
    for num in array {
        if num > largest {
            secondLargest = largest
            largest = num
        } else if num > secondLargest && num != largest {
            secondLargest = num
        }
    }
    
    return secondLargest != Int.min ? secondLargest : nil
}
let logest = findSecondLargestNumber(in: numbers)


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
