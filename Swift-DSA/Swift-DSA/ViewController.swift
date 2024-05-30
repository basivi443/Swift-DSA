//
//  ViewController.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 28/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var solution = Palindrome()
        let value = solution.getPalindrome(numbers: [1,2,3,4,3,2,1])
        print(value)
    }


}

