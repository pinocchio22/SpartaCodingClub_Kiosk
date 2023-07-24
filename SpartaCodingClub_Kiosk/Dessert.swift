//
//  Dessert.swift
//  SpartaCodingClub_Kiosk
//
//  Created by Jack Lee on 2023/07/24.
//

import Foundation

class Dessert {
    private let name: String
    private var price: Double
    private let description: String
    private let index: Int
    
    static var currentIndex = 0
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
        self.index = Dessert.currentIndex
        Dessert.currentIndex += 1
    }
    
    func displayInfo() {
        print("\(index + 1): \(name) | W \(price) | \(description)")
    }
}

let dessertList = [Dessert(name: "소금 우유 아이스 모찌", price: 2.5,
                           description: "쫀득한 찹쌀떡 속에 고소한 우유 아이스크림과 짭쪼름한 소금이 어우러진 디저트"),
                   Dessert(name: "모나카 우도 땅콩 & 바닐라", price: 3.0,
                           description: "돌하르방 모나카 속에 바닐라 아이스크림과 우도 땅콩이 어우러진 디저트"),
                   Dessert(name: "맥심 스틱바 모카골드 마일드", price: 3.5,
                           description: "맥심 모카골드 마일드의 풍미를 그대로 담아 시원하게 즐기는 스틱바"),
                   Dessert(name: "오리지널 팥 인절미 빙수", price: 6.0,
                           description: "우유얼음에 쫄깃한 인절미, 견과류, 통단팥이 조화롭게 어우러진 빙수")]
