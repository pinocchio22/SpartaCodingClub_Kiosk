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
    
    init (accountName: String, currentBalance: Int) {
        self.accountName = accountName
        self.currentBalance = currentBalance
    }
    
    mutating func withdraw (value: Food)-> Int {
        if currentBalance - value.price < 0 {
            print("잔액이 부족합니다. 죄송..")
            return -1
        }
        currentBalance -= value.price
        print("\(currentBalance)원이 남았습니다. \(value.price)원 구매했습니다.")
        return currentBalance
    }
    
    func printBalance() {
        print("현재 잔액은 \(currentBalance)입니다.")
    }
}
