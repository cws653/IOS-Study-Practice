//
//  APIResponse.swift
//  AlamofireTest
//
//  Created by 최원석 on 2021/02/20.
//

import Foundation

struct APIResponse: Codable {
    let contacts: [Contact]
}

struct Contact: Codable {
    let name: String
    let email: String
    let gender: String
}
