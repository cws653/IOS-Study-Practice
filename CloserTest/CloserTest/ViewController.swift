//
//  ViewController.swift
//  CloserTest
//
//  Created by 최원석 on 2020/10/22.
//

import UIKit
//
//let names:[String] = ["wizplan", "eric", "yagom", "jenny"]
//
//
//func backwards(first: String, second: String) -> Bool {
//    print("\(first) \(second) 비교중")
//    return first > second
//}

let digitNames = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let numbers = [16, 58, 510]


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
//        let reversed: [String] = names.sorted(by: backwards)
//        print(reversed)
        
//        let reversed: [String] = names.sorted(by: { (first: String, second: String) -> Bool in return first > second})
//        print(reversed)
//
//        let reversed: [String] = names.sorted { (first: String, second: String) -> Bool in return first > second }
//        print(reversed)
//
//        let reversed: [String] = names.sorted { (first, second) in return first > second}
//        print(reversed)
//        print(reversed)
//
//        let reversed: [String] = names.sorted { return $0 > $1}
//        print(reversed)
//
//        let reversed: [String] = names.sorted { $0 > $1}
//        print(reversed)
//
        let strings = numbers.map() { (number) -> String in
            var number = number
            var output = ""
            repeat {
                output = digitNames[number % 10]! + output
                number /= 10
                print(number)
            } while number > 0
            return output
        }
        print(strings)
        
    }
}

