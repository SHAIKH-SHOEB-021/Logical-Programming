import UIKit


//1 Reverse String  Program Using Loop
func reverseString(str : String){
    var result = ""
    for i in str{
        result = "\(i)" + result
    }
    print(result)
}


//2 Find String Palindrome or Not
func palindrome(str : String){
    var  result = ""
    for i in str{
        result = "\(i)" + result
    }
    if result == str{
        print("Palindrome Str")
    }else{
        print("Could Not Palindrome Str")
    }
}


//3 Swap Value Without Using Any Variable
func swapString(){
    var a = 10
    var b = 15
    (a, b) = (b, a)
    print("a = \(a)")
    print("b = \(b)")
}


//4 Print Fibonacci Series With Recursion
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


//5 Print Fibonacci Series Without Recursion
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


//6 Find Even Numbers in A List
func evenNumber(){
    let list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    for even in list{
        if even % 2 == 0{
            print(even)
        }
    }
}

//7 Logic For Anagram Program
func anagram(){
    let fValue = "RACE"
    let sValue = "CARE"
    if fValue.count == sValue.count{
        print("Success")
    }else{
        print("Unsuccess")
    }
}


//8 Find Prime Number From N Number
func primNum(num : Int) -> Bool{
    if(num == 1 || num == 0){
        return false
    }
    for j in 2..<num{
        if(num % j == 0){
            return false
        }
    }
    return true
}
//for i in 1...20{
//   if (primNum(num: i)){
//      print(i)
//   }
//}


//9 Find Missing Element From Array
func missingElement(number : [Int]){
    for i in 1...number.max()!{
        if !number.contains(i){
            print(i)
        }
    }
}
missingElement(number: [1, 2, 4, 6, 7, 9, 12])
