//
//  AddTwoSum.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 28/05/24.
//

import Foundation

class Solution {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndex = [Int: Int]()
        
        for (index, num) in nums.enumerated() {
            let complement = target - num
            if let complementIndex = numToIndex[complement] {
                return [complementIndex, index]
            }
            numToIndex[num] = index
        }
        
        return []
    }
}

var solution = Solution()
let value = solution.twoSum([3,2,4], 6)
//Output = [1,2]
