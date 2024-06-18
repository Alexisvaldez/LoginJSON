//
//  Modelo2.swift
//  JSON
//
//  Created by user on 28/04/24.
//

import Foundation

struct Modelo2 : Decodable {
    var data : [UserList]
}

struct UserList : Decodable {
    var id: Int
    var first_name: String
    var email: String
    var avatar :String
}

struct User: Decodable {
    var data : UserList
}
