//
//  Order.swift
//  CoffeeOrdering
//
//  Created by Abdurrahman Ali on 10/3/21.
//

import Foundation

enum CoffeeType: String, Codable {
    case cappuccino
    case latte
    case espresso
    case cortado
}

enum CoffeeSize: String, Codable {
    case small
    case medium
    case large
}

struct Order: Codable {
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeeSize
}
