//
//  ViewController.swift
//  StringSplitPractice
//
//  Created by 최원석 on 2020/11/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // 1번 예제
        var str = "Hello Zedd!"
        var arr = str.components(separatedBy: " ")
        print(arr)
        print(str)
        
    }


}

