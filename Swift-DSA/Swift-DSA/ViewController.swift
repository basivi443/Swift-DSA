//
//  ViewController.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 28/05/24.
//

import UIKit




class ViewController: UIViewController {
    
    var object = ThreeSumClosest()
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    
   
//
//    func convertRomanToInteger(s: String) -> Int {
//            let value: [Character: Int] = [
//                "I": 1, "V": 5, "X": 10, "L": 50,
//                "C": 100, "D": 500, "M": 1000
//            ]
//            var sum = 0
//            var prevValue = 0
//
//            for char in s {
//                let currentValue = value[char] ?? 0
//                sum += (currentValue > prevValue) ? (currentValue - 2 * prevValue) : currentValue
//                prevValue = currentValue
//            }
//            return sum
//        }
//
//    func getReverseNumber(value: Int)-> Int{
//        var x = value
//        var result = 0
//        while(x != 0){
//            result = result * 10 + x % 10
//            x = x / 10;
//        }
//        return result
//    }
//
//    func firstMissingPositive(numbers: [Int])->Int{
//        var leastPositiveNumber = 1
//
//        let sortedArr = numbers.sorted()
//
//        for element in sortedArr{
//            if leastPositiveNumber == element{
//                leastPositiveNumber += 1
//            }
//        }
//        return leastPositiveNumber
//    }
//
}

