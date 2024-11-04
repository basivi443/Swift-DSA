//
//  ReverseInter.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 30/07/24.
//

import Foundation


class ReverseInter {
    
    func getReverseNumber(value: Int)-> Int{
        var x = value
        var result = 0
        while(x != 0){
            result = result * 10 + x % 10
            x = x / 10;
        }
        return result
    }
}

//var reverseInteger = ReverseInter()
//let value = reverseInteger.getReverseNumber(value: 123)
//Output = 321
