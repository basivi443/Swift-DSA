//
//  LongestCommonPrefix.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 06/11/24.
//

import UIKit

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var key = ""
        let tem = Array(strs[0])
        for i in 0..<tem.count {
            key.append(tem[i])
            for item in strs {
                if !item.hasPrefix(key) {
                    return String(key.dropLast(1))
                }
            }
        }
        return key
    }
}
