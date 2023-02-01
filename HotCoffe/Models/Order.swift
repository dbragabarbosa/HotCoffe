//
//  Order.swift
//  HotCoffe
//
//  Created by Daniel Braga Barbosa on 31/01/23.
//

import Foundation

enum CoffeType: String, Codable
{
    case cappuccino
    case latte
    case lattee
    case espressino
    case cortado
}

enum CoffeSize: String, Codable
{
    case small
    case medium
    case large
}

struct Order: Codable
{
    let name: String
    let email: String
    let type: CoffeType
    let size: CoffeSize
}
