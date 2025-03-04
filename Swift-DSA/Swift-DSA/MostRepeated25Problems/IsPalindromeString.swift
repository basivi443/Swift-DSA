//
//  IsPalindromeString.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 02/03/25.
//

import Foundation
func isPalindrome(_ s: String) -> Bool {

    let characters = Array(s.lowercased())
    var initialIndex = 0
    var finalIndex = characters.count - 1
    while initialIndex < finalIndex {
        if characters[initialIndex] != characters[finalIndex] {
            return false
        }
        initialIndex += 1
        finalIndex -= 1
    }
    return true
}

//print(isPalindrome("ABABA"))
