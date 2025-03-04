//
//  Palindrome.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 30/05/24.
//

import Foundation
class Palindrome{
    
    func getPalindrome(numbers:[Int]){
        var start = 0
        var end = numbers.count - 1
        while start < end{
            if numbers[start] == numbers[end]{
                print("\(numbers[start]) : \(numbers[end])")
                start = start + 1
                end = end - 1
            }
        }
    }
    
    func getPalinfromeWithNumber(number:Int)-> Bool{
        var originalNumber = number
        var reversedNumber = 0
        while originalNumber != 0{
            let lastDigit = originalNumber % 10
            reversedNumber = reversedNumber * 10 + lastDigit
            originalNumber /= 10
        }
    
        return number == reversedNumber
    }
    // Check palidrome with convert to string
    func getPalindromeNumber(number:Int)-> Bool{
        let convertStr = String(number)
        return convertStr == reverseString(str: convertStr)
    }
    
    func reverseString(str:String)-> String{
        var reversedStr = ""
        for i in str{
            reversedStr = "\(i)" + reversedStr
        }
        return reversedStr
    }
    
    
}
//var solution = Palindrome()
//let value = solution.getPalindrome(numbers: [1,2,3,4,3,2,1])
//print(value)

//1234%10 = 4 <-
//1234/10 = 123
//123%10 = 3 <-
//123/10 = 12
//12%10 = 2 <-
//12/10 = 1
//1%10 = 1 <-
//
//var num = 12345
//var arrayInt = [Int]()
//arrayInt.append(num%10)
//while num >= 10 {
//  num = num/10
//  arrayInt.insert(num%10, at: 0)
//}
