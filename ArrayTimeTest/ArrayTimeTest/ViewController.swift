//
//  ViewController.swift
//  ArrayTimeTest
//
//  Created by 최원석 on 2020/11/17.
//

import UIKit

class ViewController: UIViewController {

    var arrayTest: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0...100000000 {
            arrayTest.append(i)
        }
        
        print(arrayTest.count)
        
        processTime {
            self.arrayTest.contains(23000000)
        }

        processTime {
            for i in arrayTest {
                if i == 23000000 {
                    break
                }
            }
        }
    }

    func processTime(blockFunction: () -> ()) {
        let startTime = CFAbsoluteTimeGetCurrent()
        
        blockFunction()
        let processTime = CFAbsoluteTimeGetCurrent() - startTime
        print("수행시간 = \(processTime)")
    }

}

