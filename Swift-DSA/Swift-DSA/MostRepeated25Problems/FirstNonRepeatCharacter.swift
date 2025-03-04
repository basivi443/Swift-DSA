//
//  FirstNonRepeatCharacter.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 02/03/25.
//

import Foundation
func nonRepeat (_ input: String) -> String {
    for char in input {
        if input.firstIndex(of: char) == input.lastIndex(of: char) {
            return "\(char)"
        }
    }
    return ""
}
//print (nonRepeat("BasasfB"))

func firstNonRepeatedCharacter(in string: String) -> String {
    var characterCounts = [Character: Int]()

    for character in string {
        characterCounts[character, default: 0] += 1
    }

    for character in string {
        if characterCounts[character] == 1 {
            return "\(character)"
        }
    }

    return ""
}

//print(firstNonRepeatedCharacter(in: "BASIASIBF"))
