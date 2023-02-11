//
//  AddCoffeeOrderViewModel.swift
//  HotCoffe
//
//  Created by Daniel Braga Barbosa on 07/02/23.
//

import Foundation

struct AddCoffeeOrderViewModel
{
    
    var name: String?
    var email: String?
    
    var selectedType: String?
    var selectedSize: String?
    
    var types: [String] {
        return CoffeeType.allCases.map { $0.rawValue.capitalized }
    }
    
    var sizes: [String] {
        return CoffeSize.allCases.map { $0.rawValue.capitalized }
    }
    
}
