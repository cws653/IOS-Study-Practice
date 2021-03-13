//
//  ViewController.swift
//  EnumTest
//
//  Created by 최원석 on 2020/12/18.
//

import UIKit

enum SnackShopMenu {
    case noodle
    case kimbab
    case Tteokbokki

    var menuName: String {
        switch self {
        case .noodle:
            return "라면"
        case .kimbab:
            return "김밥"
        case .Tteokbokki:
            return "떡볶이"
        }
    }

    func nextMenu() -> SnackShopMenu {
        switch self {
        case .noodle:
            return .kimbab
        case .kimbab:
            return .Tteokbokki
        case .Tteokbokki:
            return .noodle
        }
    }
}

enum MeatShop {
    case samgyupsal
    case moksal
    case nangmyun

    var menuName: String {
        switch self {
        case .samgyupsal:
            return "삼겹살"
        case .moksal:
            return "목살"
        case .nangmyun:
            return "냉면"
        }
    }

    func nextMenu() -> MeatShop {
        switch self {
        case .samgyupsal:
            return .moksal
        case .moksal:
            return .nangmyun
        case .nangmyun:
            return .samgyupsal
        }
    }
}

enum WesternRestaurant {
    case pasta
    case pizza
    case steak

    var menuName: String {
        switch self {
        case .pasta:
            return "파스타"
        case .pizza:
            return "피자"
        case .steak:
            return "스테이크"
        }
    }

    func nextMenu() -> WesternRestaurant {
        switch self {
        case .pasta:
            return .pizza
        case .pizza:
            return .steak
        case .steak:
            return .pasta
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var snackShopMenu = SnackShopMenu.kimbab
        print(snackShopMenu.menuName)

        snackShopMenu = snackShopMenu.nextMenu()
        print(snackShopMenu.menuName)

        snackShopMenu = snackShopMenu.nextMenu()
        print(snackShopMenu.menuName)
    }
}



