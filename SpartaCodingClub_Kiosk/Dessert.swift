//
//  Desert.swift
//  SpartaCodingClub_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

struct Dessert: Food {
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

// deesert
let dessertList = [
    Dessert(name: "소금 우유 아이스 모찌", price: 2500, discription: "쫀득한 찹쌀떡 속에 고소한 우유 아이스크림과 짭쪼름한 소금이 어우러진 디저트"),
    Dessert(name: "모나카 우도 땅콩 & 바닐라", price: 3000, discription: "돌하르방 모나카 속에 바닐라 아이스크림과 우도 땅콩이 어우러진 디저트"),
    Dessert(name: "맥심 스틱바 모카골드 마일드", price: 3500, discription: "맥심 모카골드 마일드의 풍미를 그대로 담아 시원하게 즐기는 스틱바"),
    Dessert(name: "오리지널 팥 인절미 빙수", price: 6000, discription: "우유얼음에 쫄깃한 인절미, 견과류, 통단팥이 조화롭게 어우러진 빙수"),
]
