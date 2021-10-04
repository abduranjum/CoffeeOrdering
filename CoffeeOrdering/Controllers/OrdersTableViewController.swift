//
//  OrdersTableViewController.swift
//  CoffeeOrdering
//
//  Created by Abdurrahman Ali on 8/14/21.
//

import Foundation
import UIKit

class OrdersTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateOrders()
    }
    
    private func populateOrders() {
        
        guard let coffeeOrdersURL = URL(string: "https://guarded-retreat-82533.herokuapp.com/orders") else {
            fatalError("URL was incorrect")
        }
        
        let resource = Resource<[Order]>(url: coffeeOrdersURL)
        
        Webservice().load(resource: resource) { result in
            switch result {
            case .success(let orders):
                print(orders)
            case .failure(let error):
                print(error)
            }
        }
    }
}
