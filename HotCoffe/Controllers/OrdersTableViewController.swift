//
//  OrdersTableViewController.swift
//  HotCoffe
//
//  Created by Daniel Braga Barbosa on 26/01/23.
//

import Foundation

import UIKit

class OrdersTableViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        populateOrders()
    }
    
    private func populateOrders()
    {
        guard let coffeeOrdersURL = URL(string: "https://warp-wiry-rugby.glitch.me/orders") else {
            fatalError("URL was incorrect")
        }
        
        let resource = Resource<[Order]>(url: coffeeOrdersURL)
        
        Webservice().load(resource: resource){ result in
            
            switch result
            {
                case .success(let orders):
                    print(orders)
                case .failure(let error):
                    print(error)
            }
            
            
        }
    }
}
