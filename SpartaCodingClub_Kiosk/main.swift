//
//  main.swift
//  Sparta_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

// Icecream
var icecreamList = [
    IceCream(name: "민트 초콜렛 칩", price: 4500, discription: "쿨한 당신의 선택! 상쾌한 민트향에 초코칩까지!"),
    IceCream(name: "레인보우 샤베트", price: 5500, discription: "상큼한 파인애플, 오렌지, 라즈베리 샤베"),
    IceCream(name: "피스타치오 아몬드", price: 5000, discription: "피스타치오향과 아몬드가 만나 고소함이 두배!"),
    IceCream(name: "엄마는 외계인", price: 6500, discription: "밀크 초콜릿, 다크 초콜릿, 화이트 무스 세 가지 아이스크림에 달콤 바삭한 초코볼이 더해진 아이스크림"),
    IceCream(name: "아몬드 봉봉", price: 4000, discription: "입안 가득 즐거운 초콜릿, 아몬드로 더욱 달콤하게!"),
]
// Icecream Cake
var icecreamCakeList = [
    IceCraemCake(name: "골라먹는 27 큐브", price: 10000, discription: "9가지 맛 아이스크림 바이트를 초콜릿 판 위에 쌓아올려 전체 다 취식 가능한 실속있는 케이크"),
    IceCraemCake(name: "수줍은 웰시코기의 숨바꼭질", price: 30000, discription: "부끄러움 많은 웰시코기의 앙증맞은 뒷모습을 표현한 케이크"),
    IceCraemCake(name: "미니 골라먹는 와츄원", price: 15000, discription: "BR 베스트셀러 골라먹는 와츄원의 미니 버전! 다양한 맛을 골라먹는 매력에 가성비까지 더해진 매력만점 미니 케이크"),
    IceCraemCake(name: "미니 해피버스데이 케이크", price: 25000, discription: "BR 베스트셀러 해피 버스데이 케이크의 미니 버전! 레트로 감성과 레터링 초콜릿으로 더욱 예쁜 미니 케이크"),
    IceCraemCake(name: "골라먹는 스노우 볼", price: 35000, discription: "동글동글 스노우 볼을 가득! BR의 아이스크림을 한입에 쏙~ 넣어 즐길 수 있는 스노우 볼 케이크"),
]
// drink
var drinkList = [
    Drink(name: "엄마는 외계인 블라스트", price: 5700, discription: "배스킨라빈스의 대표 아이스크림 ‘엄마는 외계인’ 아이스크림으로 만든 BR의 시그니처 블라스트"),
    Drink(name: "아이스 아메리카노", price: 4500, discription: "카페브리즈 커피를 가장 부드럽게 즐길 수 있는 따뜻한 아메리카노"),
    Drink(name: "아몬드 봉봉 블라스", price: 5500, discription: "고소하고 부드러운 바닐라 풍미에 식감이 일품인 초콜릿 코팅 아몬드가 토핑된 블라스트"),
    Drink(name: "딸기 연유 라떼", price: 5500, discription: "달콤한 연유와 딸기과육이 들어있는 딸기라떼에 베리베리 스트로베리 아이스크림을 토핑한 부드러운 라떼"),
    Drink(name: "카푸치노 블라스트 모카", price: 6000, discription: "달콤한 초코시럽이 첨가되어 더욱 깊고 풍부한 맛이 특징"),
]
// deesert
var desertList = [
    Desert(name: "소금 우유 아이스 모찌", price: 2500, discription: "쫀득한 찹쌀떡 속에 고소한 우유 아이스크림과 짭쪼름한 소금이 어우러진 디저트"),
    Desert(name: "모나카 우도 땅콩 & 바닐라", price: 3000, discription: "돌하르방 모나카 속에 바닐라 아이스크림과 우도 땅콩이 어우러진 디저트"),
    Desert(name: "맥심 스틱바 모카골드 마일드", price: 3500, discription: "맥심 모카골드 마일드의 풍미를 그대로 담아 시원하게 즐기는 스틱바"),
    Desert(name: "오리지널 팥 인절미 빙수", price: 6000, discription: "우유얼음에 쫄깃한 인절미, 견과류, 통단팥이 조화롭게 어우러진 빙수"),
]

var shoppingList = [Food]()

var intro = """
"이번 여름 시원하게 해드릴 배스킨 라빈스에 오신것을 환영합니다~! （˶′◡‵˶）"
아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.

[ BASKIN ROBBINS MENU ]
1. Ice Cream       | 아이스크림
2. Ice Cream Cake  | 아이스크림 케이크
3. Drinks          | 매장에서 직접 만드는 음료
4. Desert          | 디저트
5. ShoppingList    | 장바구니
0. 종료             | 프로그램 종료
"""

print(intro)
// menu
while true {
    switch readLine() {
    case "1":
        print("원하시는 제품을 선택해주세요.")
        showIcecream()
    case "2":
        print("원하시는 제품을 선택해주세요.")
        showIcecreamCake()
    case "3":
        print("원하시는 제품을 선택해주세요.")
        showDrink()
    case "4":
        print("원하시는 제품을 선택해주세요.")
        showDesert()
    case "5":
        showShoopingList()
    case "0":
        exit(0)
    default:
        print("잘못된 입력입니다.")
    }
}

// show icecream menu
func showIcecream() {
    for i in 0...icecreamList.count-1 {
        print("\(i+1)." + icecreamList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addShoopingList(icecreamList[Int(index)!-1])
}

// show icecream cake menu
func showIcecreamCake() {
    for i in 0...icecreamCakeList.count-1 {
        print("\(i+1)." + icecreamCakeList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addShoopingList(icecreamCakeList[Int(index)!-1])
}

// show drink menu
func showDrink() {
    for i in 0...drinkList.count-1 {
        print("\(i+1)." + drinkList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addShoopingList(drinkList[Int(index)!-1])
}

// show desert menu
func showDesert() {
    for i in 0...desertList.count-1 {
        print("\(i+1)." + desertList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addShoopingList(desertList[Int(index)!-1])
}



func addShoopingList(_ food: Food) {
    print("\(food.name)을 장바구니에 담으시겠습니까? \n 1. 네    2. 아니요")
    guard let num = readLine() else {
        print("숫자가 입력되지 않았습니다.")
        return showIcecream()
    }
    if num == "1" {
        shoppingList.append(food)
        print("장바구니에 \(food.name)을 담았습니다.")
    } else if num == "2" {
        print("이전 화면으로 돌아갑니다.")
        showIcecream()
    } else {
        print("숫자를 잘못 입력하셨습니다.")
        showIcecream()
    }
}

func showShoopingList() {
    var total = 0
    if shoppingList.isEmpty {
        print("장바구니가 비어있습니다.")
    } else {
        for i in 0...shoppingList.count-1 {
            print ("\(i). \(shoppingList[i].name) | W \(shoppingList[i].price)")
            total += shoppingList[i].price
        }
    }
    print("total = W \(total)")
}
