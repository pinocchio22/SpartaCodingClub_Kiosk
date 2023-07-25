//
//  IceCreamCake.swift
//  SpartaCodingClub_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

struct IceCreamCake: Food {
    let name: String
    let price: Int
    let description: String
    
    init(name: String, price: Int, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
    
    func displayInfo() -> String {
        return ("\(name) | W \(price) | \(description)")
    }
}

// Icecream Cake
let icecreamCakeList = [
    IceCraemCake(name: "골라먹는 27 큐브", price: 10000, discription: "9가지 맛 아이스크림 바이트를 초콜릿 판 위에 쌓아올려 전체 다 취식 가능한 실속있는 케이크"),
    IceCraemCake(name: "수줍은 웰시코기의 숨바꼭질", price: 30000, discription: "부끄러움 많은 웰시코기의 앙증맞은 뒷모습을 표현한 케이크"),
    IceCraemCake(name: "미니 골라먹는 와츄원", price: 15000, discription: "BR 베스트셀러 골라먹는 와츄원의 미니 버전! 다양한 맛을 골라먹는 매력에 가성비까지 더해진 매력만점 미니 케이크"),
    IceCraemCake(name: "미니 해피버스데이 케이크", price: 25000, discription: "BR 베스트셀러 해피 버스데이 케이크의 미니 버전! 레트로 감성과 레터링 초콜릿으로 더욱 예쁜 미니 케이크"),
    IceCraemCake(name: "골라먹는 스노우 볼", price: 35000, discription: "동글동글 스노우 볼을 가득! BR의 아이스크림을 한입에 쏙~ 넣어 즐길 수 있는 스노우 볼 케이크"),
]
