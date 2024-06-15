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
}
//var solution = Palindrome()
//let value = solution.getPalindrome(numbers: [1,2,3,4,3,2,1])
//print(value)
