//
//  IceCream.swift
//  SpartaCodingClub_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

struct IceCream: Food {
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

// Icecream
var icecreamList = [
    IceCream(name: "민트 초콜렛 칩", price: 4500, description: "쿨한 당신의 선택! 상쾌한 민트향에 초코칩까지!"),
    IceCream(name: "레인보우 샤베트", price: 5500, description: "상큼한 파인애플, 오렌지, 라즈베리 샤베"),
    IceCream(name: "피스타치오 아몬드", price: 5000, description: "피스타치오향과 아몬드가 만나 고소함이 두배!"),
    IceCream(name: "엄마는 외계인", price: 6500, description: "밀크 초콜릿, 다크 초콜릿, 화이트 무스 세 가지 아이스크림에 달콤 바삭한 초코볼이 더해진 아이스크림"),
    IceCream(name: "아몬드 봉봉", price: 4000, description: "입안 가득 즐거운 초콜릿, 아몬드로 더욱 달콤하게!"),
]
