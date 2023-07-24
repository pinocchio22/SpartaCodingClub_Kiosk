//
//  MenuBoard.swift
//  SpartaCodingClub_Kiosk
//
//  Created by Jack Lee on 2023/07/24.
//

import Foundation

class IceCream {
    private let name: String
    private var price: Double
    private let description: String
    private var index: Int
    
    static var currentIndex = 0
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
        self.index = IceCream.currentIndex
        IceCream.currentIndex += 1
    }
    
    func displayInfo() {
        print("\(index + 1): \(name) | W \(price) | \(description)")
    }
}

let iceCreamList = [IceCream(name: "민트 초콜렛 칩", price: 4.5,
                             description: "쿨한 당신의 선택! 상쾌한 민트향에 초코칩까지!"),
                    IceCream(name: "레인보우 샤베트", price: 5.5,
                             description: "쿨한 당신의 선택! 상쾌한 민트향에 초코칩까지!"),
                    IceCream(name: "파스타치오 아몬드", price: 5.0,
                             description: "피스타치오향과 아몬드가 만나 고소함이 두배!"),
                    IceCream(name: "엄마는 외계인", price: 6.5,
                             description: "피스타치오향과 아몬드가 만나 고소함이 두배!"),
                    IceCream(name: "아몬드 봉봉", price: 4.0,
                             description: "피스타치오향과 아몬드가 만나 고소함이 두배!")]
