//
//  Order.swift
//  HotCoffe
//
//  Created by Daniel Braga Barbosa on 31/01/23.
//

import Foundation

enum CoffeeType: String, Codable, CaseIterable
{
    case cappuccino
    case latte
    case espressino
    case cortado
}

enum CoffeSize: String, Codable, CaseIterable
{
    case small
    case medium
    case large
}

struct Order: Codable
{
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeSize
}
