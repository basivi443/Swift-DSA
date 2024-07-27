//
//  3SumClosest.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 26/07/24.
//

import Foundation
class ThreeSumClosest {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
         let sortedArray = nums.sorted()
         let length = sortedArray.count

         var difference : Int = .max
         var result = 0

         for index in 0..<length - 1 {
             var low = index + 1
             var high = length - 1

             while low < high {
                 let sum = sortedArray[index] + sortedArray[low] + sortedArray[high]
                 sum > target ? (high -= 1) : (low += 1)

                 let closeDifference =  abs(sum - target)

                 if closeDifference < difference {
                     difference =  closeDifference
                     result = sum
                 }

             }
         }
         return result
    }
}
//        print(object.threeSumClosest([-1,2,1,-4], 1))
//var object = ThreeSumClosest()


