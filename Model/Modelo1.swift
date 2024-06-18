//
//  Modelo1.swift
//  JSON
//
//  Created by user on 28/04/24.
//

import Foundation

struct Modelo1: Decodable {
    var id : Int
    var name :String
    var email: String
    var username: String
    var address : Address
}
struct Address : Decodable {
    var street : String
    var geo : Geo
}

struct Geo: Decodable {
    var lat : String
}
