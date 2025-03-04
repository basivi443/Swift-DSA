//
//  LongestSubstringWithoutRepeat.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 03/03/25.
//

import Foundation
func lengthOfLongestSubstring(_ s: String) -> Int {
        var start = 0
        var maxLength = 0
        var charToIndex = [Character: Int]()
        
        for (i, char) in s.enumerated() {
            if let index = charToIndex[char] {
                // If the character is already present in the charToIndex dictionary, move the start index to the next of the previous occurrence of the character.
                start = max(start, index + 1)
            }
            
            charToIndex[char] = i
            maxLength = max(maxLength, i - start + 1)
        }
        
        return maxLength
    }
