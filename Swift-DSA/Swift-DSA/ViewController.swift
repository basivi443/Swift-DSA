//
//  ViewController.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 28/05/24.
//

import UIKit

class ViewController: UIViewController {
    
 var object = ThreeSumClosest()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(object.threeSumClosest([-1,2,1,-4], 1))
    }


}

