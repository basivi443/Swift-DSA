//
//  OwnHigherOrderFunctions.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 15/06/24.
//

import Foundation

//MAP

extension Array{
    func ownMap<T>(transform: (Element)->T) -> [T]{
        var result = [T]()
        forEach { element in
            result.append(transform(element))
        }
        return result
    }
}
//Ex:1
//var value = [1,2,3,4,5]
//print(value.ownMap{$0*2})
//Output: [2,4,6,8,10]
//Ex:2 string count
//var value = ["Basivi","reddy","Rama","Ram","Ba","1"]
//print(value.ownMap{$0.count})
//Output: [6, 5, 4, 3, 2, 1]

//COMPACTMAP

extension Array{
    
    func ownCompactMap<T>(transform: (Element) -> T?) -> [T]{
        var result = [T]()
        forEach { element in
            if let nonOptional = transform(element){
                result.append(nonOptional)
            }
        }
        return result
    }
}

//Ex:
//var input = ["Ba",nil,"ram",""]
//print(input.ownCompactMap{$0})
//Output:  ["Ba", "ram", ""]

//FILTER

extension Array {
    func myFilter(isIncluded: (Element)-> Bool) -> [Element] {
        var result = [Element]()
        forEach { element in
            if isIncluded(element) {
            result.append(element)
            }
        }
        return result
    }
}

//let a = [1,2,3,4,5]
//print(a.myFilter{$0 % 2 == 0})
//Output: [2,4]

//REDUCE

extension Array {
    func myReduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element)-> Result) -> Result {
         var result = initialResult
           forEach {
               result = nextPartialResult(result, $0)
           }
           return result
    }
}

//let numbers = [1, 2, 3, 4]
//let numberSum = numbers.myReduce(0, { sum, element in
//    sum + element
//})
//print(numberSum) // prints 10





