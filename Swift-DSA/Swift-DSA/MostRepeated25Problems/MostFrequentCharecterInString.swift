//
//  MostFrequentCharecterInString.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 03/03/25.
//

import Foundation
func returnMostCommonCharacter(string: String) -> Character {
    var characters = Array(string.lowercased())
 var dict = Dictionary<Character, Int>()
 var maxCharacter = characters[0]
 var maxCount = 0
  for character in characters {
    if let seenCharCount = dict[character] {
       dict[character] = seenCharCount + 1
       if dict[character]! > maxCount {
           maxCharacter = character
           maxCount = dict[character]!
       }
     }   else {
       dict[character] = 1
     }
  }
  return maxCharacter
}

//print(returnMostCommonCharacter(string: "Tomcruise Bradpitt"))
