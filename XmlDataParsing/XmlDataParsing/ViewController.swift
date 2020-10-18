//
//  ViewController.swift
//  XmlDataParsing
//
//  Created by 최원석 on 2020/10/18.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate {
    
    var strXMLData:String = ""
    var currentElement:String = ""
    var passData:Bool = false
    var passName:Bool = false
    var parser = XMLParser()
    
    @IBOutlet weak var lblNameData: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard let url:String = "http://api.androidhive.info/pizza/?format=xml" else {
            return
        }
        
        guard let urlToSend:NSURL = NSURL(string: url)  else {
            return
        }
        
        guard let parser = XMLParser(contentsOf: urlToSend as URL)  else {
            return
        }
        
        parser.delegate = self
        
        let success:Bool = parser.parse()
        
        if success {
            print("parse success!")
            
            print(strXMLData)
            
            lblNameData?.text = strXMLData
        } else {
            print("parse failure")
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        currentElement = elementName
        if elementName == "id" || elementName == "name" || elementName == "cost" || elementName == "description" {
            if elementName == "name" {
                passName = true
            }
            passData = true
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "id" || elementName == "name" || elementName == "cost" || elementName == "description" {
            if elementName == "name" {
                passName = false
            }
            passData = false
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        if passName {
            strXMLData = strXMLData+"\n\n" + string
        }
        
        if passData {
            print(string)
        }
    }
}
