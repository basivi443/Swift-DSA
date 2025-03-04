//
//  ReverseString.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 02/03/25.
//

import Foundation

func reverse(_ s: String) -> String {
    var str = ""
    for character in s {
        str = "\(character)" + str
    }
    return str
}

//print(reverse("BASIVI"))
