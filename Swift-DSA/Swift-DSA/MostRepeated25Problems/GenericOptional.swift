//
//  GenericOptional.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 15/06/24.
//

import Foundation

class MyGenericClass<Value> {
    var value: Value
    init(_ value: Value) {
        self.value = value
    }
    convenience init?(_ value: Value?) {
        switch value {
        case .some(let unwrapped):
            self.init(unwrapped)
        case .none:
            return nil
        }
    }
}

extension MyGenericClass where Value == Int {
    func doSomething() {}
}

//Optional Generic inferring
var num: Int? = 12
let myClass = MyGenericClass(num) // => Optional MyGenericClass<Int>
//myClass?.doSomething()
        
//Regular Generic inferring
var num2: Int = 10
let myClass2 = MyGenericClass(num2) // => Non-Optional MyGenericClass<Int>
//myClass2.doSomething()
        
//Regular Generic with Optional value
var num3: Int? = 15
let myClass3 = MyGenericClass<Optional<Int>>(num3) // Non-Optional MyGenericClass<Opti
