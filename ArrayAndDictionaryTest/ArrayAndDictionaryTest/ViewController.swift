//
//  ViewController.swift
//  ArrayAndDictionaryTest
//
//  Created by 최원석 on 2020/10/21.
//

import UIKit

class ViewController: UIViewController {

    var name:[String] = []
    var numberForName:[String:Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        name = ["yagom","chulsoo","younghee","yagom"]
//        print(name)
//
//        name[2] = "jenny"
//        print(name[2])
//
//        name.insert(contentsOf: ["jinhee","minsoo"],at: 4)
//        print(name)
//
//        print(name.index(of: "yagom"))
//        print(name.first)
//        print(name.last)
        
        numberForName = ["yagom": 100, "chulsoo": 200, "jenny": 300]
        print(numberForName)
        print(numberForName.count)
        
        print(numberForName["chulsoo"])
        print(numberForName["minji"])
        
        numberForName["chulsoo"] = 500
        print(numberForName["chulsoo"])
        
        print(numberForName.removeValue(forKey: "yagom"))
        print(numberForName)
        
        print(numberForName["yagom", default: 0])
        print(numberForName)
        
        let friends: [String: Int] = ["Jay": 35, "Joe": 29, "Jenny": 31]
        
        for i in friends {
            print(i)
        // 딕셔너리가 for문을 거칠 경우 결과값은 튜플형태로 나온다.
        }
        
        let 주소: [String:String] = ["도": "충청북도", "시군구": "청주시 청원구", "동읍면": "율량동"]
        
        for (키,값) in 주소 {
            print("\(키) : \(값)")
        }
    }


}

