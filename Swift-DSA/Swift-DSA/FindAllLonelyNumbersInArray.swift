//
//  FindAllLonelyNumbersInArray.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 25/07/24.
//

import Foundation
class FindLoneyNumbersInArray{
    func findLonelyNumbers(in array: [Int]) -> [Int] {
        var lonelyNumbers = [Int]()
        
        guard !array.isEmpty else {
            return lonelyNumbers
        }
        
        // Dictionary to count occurrences of each number
        var numCount = [Int: Int]()
        for num in array {
            numCount[num, default: 0] += 1
        }
        
        // Sort the array to check for adjacent elements
        let sortedArray = array.sorted()
        
        for i in 0..<sortedArray.count {
            let current = sortedArray[i]
            let previous = i > 0 ? sortedArray[i - 1] : nil
            let next = i < sortedArray.count - 1 ? sortedArray[i + 1] : nil
            
            if numCount[current] == 1 && (previous == nil || previous! + 1 != current) && (next == nil || next! - 1 != current) {
                lonelyNumbers.append(current)
            }
        }
        
        return lonelyNumbers
    }
}
//var object = FindLoneyNumbersInArray()

//print(object.findLonelyNumbers(in: [10,6,5,8]))
