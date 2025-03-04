//
//  RemoveDuplicateCharFromString.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 02/03/25.
//

import Foundation
func removeDuplicates(from string: String) -> String {
    var uniqueCharacters = ""
    for char in string {
        if !uniqueCharacters.contains(char) {
            uniqueCharacters.append(char)
        }
    }
    return uniqueCharacters
}
//print(removeDuplicates(from: "BASIVIAAAAAA"))
