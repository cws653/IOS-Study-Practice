//
//  ViewController.swift
//  AlamofireTest
//
//  Created by 최원석 on 2021/02/20.
//

import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {
    
    // MARK:- Property
    let urlString = "https://api.androidhive.info/contacts/"
    let tableView = UITableView()
    var dataSource: [Contact] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        registerCell()
        fetchData()
    }

    private func setupUI() {
        self.view.addSubview(tableView)
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    private func registerCell() {
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
    }
    
    private func fetchData() {
        AF.request(urlString).responseJSON { (response) in
            switch response.result {
                // 성공
            case .success(let res):
                do {
                    // 반환값을 Data 타입으로 변환
                    let jsonData = try JSONSerialization.data(withJSONObject: res, options: .prettyPrinted)
                    let json = try JSONDecoder().decode(APIResponse.self, from: jsonData)
                    //
                    self.dataSource = json.contacts
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                } catch(let err) {
                    print(err.localizedDescription)
                }
                // 실패
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }

}

