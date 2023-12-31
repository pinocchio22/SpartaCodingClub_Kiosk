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

// drink
let drinkList = [
    Drink(name: "엄마는 외계인 블라스트", price: 5700, description: "배스킨라빈스의 대표 아이스크림 ‘엄마는 외계인’ 아이스크림으로 만든 BR의 시그니처 블라스트"),
    Drink(name: "아이스 아메리카노", price: 4500, description: "카페브리즈 커피를 가장 부드럽게 즐길 수 있는 따뜻한 아메리카노"),
    Drink(name: "아몬드 봉봉 블라스", price: 5500, description: "고소하고 부드러운 바닐라 풍미에 식감이 일품인 초콜릿 코팅 아몬드가 토핑된 블라스트"),
    Drink(name: "딸기 연유 라떼", price: 5500, description: "달콤한 연유와 딸기과육이 들어있는 딸기라떼에 베리베리 스트로베리 아이스크림을 토핑한 부드러운 라떼"),
    Drink(name: "카푸치노 블라스트 모카", price: 6000, description: "달콤한 초코시럽이 첨가되어 더욱 깊고 풍부한 맛이 특징"),
]

func drinkRun() {
  for i in 0...drinkList.count-1 {
    print("\(i+1)." + drinkList[i].displayInfo())
  }
  print("0.돌아가기")
  var isRunning = true
  while isRunning {
    print("음료를 담아주세요 ->", terminator: " ")
    guard let index = readLine() else {
      return print("숫자가 입력되지 않았습니다,")
    }
    switch index {
    case "1", "2", "3", "4", "5":
      addShoppingList(drinkList[Int(index)!-1])
    case "0":
      isRunning = false
    default:
      print("잘못된 메뉴입니다. 다시 입력해주세요.")
    }
  }
}
