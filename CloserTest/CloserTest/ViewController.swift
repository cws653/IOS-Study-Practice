//
//  ViewController.swift
//  CloserTest
//
//  Created by 최원석 on 2020/10/22.
//

import UIKit

let names:[String] = ["wizplan", "eric", "yagom", "jenny"]

func backwards(first: String, second: String) -> Bool {
    print("\(first) \(second) 비교중")
    return first > second
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let reversed: [String] = names.sorted(by: backwards)
//        print(reversed)
        
//        let reversed: [String] = names.sorted(by: { (first: String, second: String) -> Bool in return first > second})
//        print(reversed)
        
//        let reversed: [String] = names.sorted { (first: String, second: String) -> Bool in return first > second }
//        print(reversed)
        
//        let reversed: [String] = names.sorted { (first, second) in return first > second}
//        print(reversed)
//        print(reversed)

//        let reversed: [String] = names.sorted { return $0 > $1}
//        print(reversed)
        
//        let reversed: [String] = names.sorted { $0 > $1}
//        print(reversed)
        
        
        
        
    }
}

