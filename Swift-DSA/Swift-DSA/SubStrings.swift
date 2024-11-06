//
//  SubStrings.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 06/11/24.
//

import Foundation

class SubString{
    
    static func getAllSubString(str: String)-> String{
        let array = Array(str)
        for start in 0..<str.count{
            for end in start..<str.count{
                return String(array[start...end])
            }
        }
        return ""
    }
}
 
//var solution = SubString()
//let value = solution.printAllSubstringInGivenStr(str: "abc")
//print(value)
