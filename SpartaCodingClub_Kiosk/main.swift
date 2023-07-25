//
//  main.swift
//  Sparta_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

var orderList = [Food]()

let intro = """
이번 여름 시원하게 해드릴 배스킨 라빈스에 오신것을 환영합니다~! （˶′◡‵˶）
아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.

[ BASKIN ROBBINS MENU ]
1. Ice Cream       | 아이스크림
2. Ice Cream Cake  | 아이스크림 케이크
3. Drinks          | 매장에서 직접 만드는 음료
4. Desert          | 디저트
5. OrderList    | 장바구니
0. 종료             | 프로그램 종료
"""

var totalMoney = 0
var myMoney = 0

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
        showDessert()
    case "5":
        showOrderList()
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
    addOrderList(icecreamList[Int(index)!-1])
}

// show icecream cake menu
func showIcecreamCake() {
    for i in 0...icecreamCakeList.count-1 {
        print("\(i+1)." + icecreamCakeList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addOrderList(icecreamCakeList[Int(index)!-1])
}

// show drink menu
func showDrink() {
    for i in 0...drinkList.count-1 {
        print("\(i+1)." + drinkList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addOrderList(drinkList[Int(index)!-1])
}

// show desert menu
func showDessert() {
    for i in 0...dessertList.count-1 {
        print("\(i+1)." + dessertList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addOrderList(dessertList[Int(index)!-1])
}

func addOrderList(_ food: Food) {
    print("\(food.name)을 장바구니에 담으시겠습니까? \n 1. 네    2. 아니요")
    guard let num = readLine() else {
        print("숫자가 입력되지 않았습니다.")
        return showIcecream()
    }
    if num == "1" {
        orderList.append(food)
        print("장바구니에 \(food.name)을 담았습니다.")
    } else if num == "2" {
        print("이전 화면으로 돌아갑니다.")
        showIcecream()
    } else {
        print("숫자를 잘못 입력하셨습니다.")
        showIcecream()
    }
}

func showOrderList() {
    if orderList.isEmpty {
        print("장바구니가 비어있습니다.")
    } else {
        print("[ Orders ]")
        orderList.forEach { item in
            totalMoney += item.price
            print("\(item.name) | W \(item.price) | \(item.discription)")
        }
    }
    print("[ Total ] \n W \(totalMoney) \n 1. 주문    2. 메뉴판")
    if readLine() == "1" {
        payMoney()
        print("")
    } else {
        print(intro)
    }
}

func payMoney() {
    if myMoney > totalMoney {
        myMoney -= totalMoney
        totalMoney = 0
        orderList = []
        print("결제가 완료되었습니다.   (결제 시간)")
    } else {
        print("잔액이 부족합니다.")
    }
}
