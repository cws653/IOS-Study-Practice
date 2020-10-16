//
//  ViewController.swift
//  UIImageViewChangeLayout
//
//  Created by 최원석 on 2020/10/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testUIImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        testUIImageView.layer.cornerRadius = testUIImageView.frame.size.height/2
        testUIImageView.clipsToBounds = true
    }


}

