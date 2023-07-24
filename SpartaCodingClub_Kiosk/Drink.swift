//
//  Drink.swift
//  SpartaCodingClub_Kiosk
//
//  Created by Jack Lee on 2023/07/24.
//

import Foundation

class Drink {
    private let name: String
    private var price: Double
    private let description: String
    private let index: Int
    
    static var currentIndex = 0
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
        self.index = Drink.currentIndex
        Drink.currentIndex += 1
    }
    
    func displayInfo() {
        print("\(index + 1): \(name) | W \(price) | \(description)")
    }
}

let drinkList = [Drink(name: "엄마는 외계인 블라스트", price: 5.7,
                       description: "동글동글 스노우 볼을 가득! BR의 아이스크림을 한입에 쏙~ 넣어 즐길 수 있는 스노우 볼 케이크"),
                 Drink(name: "아이스 아메리카노", price: 4.5,
                       description: "카페브리즈 커피를 가장 부드럽게 즐길 수 있는 따뜻한 아메리카노"),
                 Drink(name: "아몬드 봉봉 블라스트", price: 5.5,
                       description: "고소하고 부드러운 바닐라 풍미에 식감이 일품인 초콜릿 코팅 아몬드가 토핑된 블라스트"),
                 Drink(name: "딸기 연유 라떼", price: 5.5,
                       description: "달콤한 연유와 딸기과육이 들어있는 딸기라떼에 베리베리 스트로베리 아이스크림을 토핑한 부드러운 라떼"),
                 Drink(name: "카푸치노 블라스트 모카", price: 6.0,
                       description: "달콤한 초코시럽이 첨가되어 더욱 깊고 풍부한 맛이 특징")]
