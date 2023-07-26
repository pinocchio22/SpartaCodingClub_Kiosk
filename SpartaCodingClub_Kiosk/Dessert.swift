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

// deesert
let dessertList = [
    Dessert(name: "소금 우유 아이스 모찌", price: 2500, description: "쫀득한 찹쌀떡 속에 고소한 우유 아이스크림과 짭쪼름한 소금이 어우러진 디저트"),
    Dessert(name: "모나카 우도 땅콩 & 바닐라", price: 3000, description: "돌하르방 모나카 속에 바닐라 아이스크림과 우도 땅콩이 어우러진 디저트"),
    Dessert(name: "맥심 스틱바 모카골드 마일드", price: 3500, description: "맥심 모카골드 마일드의 풍미를 그대로 담아 시원하게 즐기는 스틱바"),
    Dessert(name: "오리지널 팥 인절미 빙수", price: 6000, description: "우유얼음에 쫄깃한 인절미, 견과류, 통단팥이 조화롭게 어우러진 빙수"),
]


func dessertRun() {
  for i in 0...dessertList.count-1 {
    print("\(i+1)." + dessertList[i].displayInfo())
  }
  print("0.돌아가기")
  var isRunning = true
  while isRunning {
    print("디저트를 담아주세요 ->", terminator: " ")
    guard let index = readLine() else {
      return print("숫자가 입력되지 않았습니다,")
    }
    switch index {
    case "1", "2", "3", "4":
      addShoppingList(dessertList[Int(index)!-1])
    case "0":
      isRunning = false
    default:
      print("잘못된 메뉴입니다. 다시 입력해주세요.")
    }
  }
}
