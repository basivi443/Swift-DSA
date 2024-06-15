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
        
        let a = [1,2,3,4,5]
        print(a.myFilter{$0 % 2 == 0})
    }


}

