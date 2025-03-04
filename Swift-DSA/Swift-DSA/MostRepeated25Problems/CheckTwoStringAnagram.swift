//
//  CheckTwoStringAnagram.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 02/03/25.
//

import Foundation
func checkAnagram(str1: String, str2: String) -> Bool {
    
    // check they have equal count
    guard str1.count == str2.count else {
        return false
    }
    // lowercase first then used sorted() function, it will return array of characters sorted
    // ["a", "b", "c", "d", "e", "f"]
    if str1.lowercased().sorted() == str2.lowercased().sorted() {
        return true
    }
    
    return false
}

//print(checkAnagram(str1: "nba", str2: "abn"))

func checkAnagram1(str1: String, str2: String) -> Bool {
    var dict: [Character: Int] = [:]

    for char in str1 {
        dict[char, default: 0] += 1
    }

    for char in str2 {
        dict[char, default: 0] -= 1
    }

    for (_, value) in dict {
        if (value != 0) {
            // if value is not equal to zero that its more or less than zero, either case both string doesn't contains same characters
            return false
        }
    }
    return true
}
