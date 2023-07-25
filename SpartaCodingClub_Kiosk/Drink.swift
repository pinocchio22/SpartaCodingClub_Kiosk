//
//  Drink.swift
//  SpartaCodingClub_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

struct Drink: Food {
    let name: String
    let price: Int
    let discription: String
    
    init(name: String, price: Int, discription: String) {
        self.name = name
        self.price = price
        self.discription = discription
    }
    
    func displayInfo() -> String {
        return ("\(name) | W \(price) | \(discription)")
    }
}
