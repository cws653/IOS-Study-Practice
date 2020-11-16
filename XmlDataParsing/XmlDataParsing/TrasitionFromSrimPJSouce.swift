//
//  TrasitionFromSrimPJSouce.swift
//  XmlDataParsing
//
//  Created by 최원석 on 2020/11/11.
//

import UIKit

class TrasitionFromSrimPJSouce: UIViewController, UITableViewDelegate, UITableViewDataSource, XMLParserDelegate  {

    @IBOutlet weak var tableView: UITableView!
    
    var list:[String:String] = [:]
    var result:[[String:String]] = []
    var currentElement = ""
    var elementCount = 0
    let cellIdentifier:String = "cell"
    
    var corpName:String?
    var corpCode:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        
        if let dataAsset: NSDataAsset = NSDataAsset(name: "CORPCODE") {
            let parser = XMLParser(data: dataAsset.data)
            parser.delegate = self
            
            let success:Bool = parser.parse()
            
            if success {
                print("parsing succed")
                print("item")
            } else {
                print("parsing failed")
            }
        } else {
            print("We don't have the data")
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        currentElement = elementName
        print("currentElement = \(elementName)")
        
        if elementName == "result" {
            result = []
        } else if elementName == "list" {
            list = [:]
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "list" {
            result.append(list)
            elementCount = elementCount+1
            print("elementCount = \(elementCount)")
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        let data = string.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        if !data.isEmpty {
            list[currentElement] = data
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let list = result[indexPath.row]
        
        if list["corp_name"] == self.corpName {
            cell.textLabel?.text = list["corp_name"]
            cell.detailTextLabel?.text = list["corp_code"]
        } else {
            return UITableViewCell()
        }
        
        return cell
    }
    

}
