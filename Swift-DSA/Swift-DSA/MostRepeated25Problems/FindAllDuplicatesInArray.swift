//
//  FindAllDuplicatesInArray.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 24/07/24.
//

import Foundation

class FindAllDuplicateInArray{
    
    func findDuplicate(array: [Int])->[Int]{
        // One way
        var duplicate = Set<Int>()
        var duplicate1 = Set<Int>()
        for i in array{
            if !duplicate.contains(i){
                duplicate.insert(i)
            }else{
                duplicate1.insert(i)
            }
        }
        //second way
        //let duplicates = Array(Set(array.filter({ (i: Int) in array.filter({ $0 == i }).count > 1})))
        return duplicate1.sorted()
    }
}
//var object = FindAllDuplicateInArray()
// print(object.findDuplicate(array: [4,3,2,7,8,2,3,1]))

