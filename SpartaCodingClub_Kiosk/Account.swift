// ACcount

//
//  Account.swift
//  SpartaCodingClub_Kiosk
//
//  Created by Daisy Hong on 2023/07/25.
//

import Foundation

struct Account {
    let accountName: String
    var currentBalance: Int
    var shoppingBag: Int
    static var currentItem: Int = 0
    
    init (accountName: String, currentBalance: Int) {
        self.accountName = accountName
        self.currentBalance = currentBalance
        Account.currentItem += 1
        self.shoppingBag = Account.currentItem
    }
    
    mutating func withdraw (value: Int) -> String {
        if currentBalance - value < 0 {
            return ("잔액이 부족합니다. 현재 잔액은 \(currentBalance)원 입니다.")
        }
        currentBalance -= value
        return ("\(currentBalance)원이 남았습니다. \(value)원 구매했습니다.")
    }
    
    func printBalance() {
        print("현재 잔액은 \(currentBalance)입니다.")
    }
}
