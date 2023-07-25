//
//  main.swift
//  Sparta_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

let paymentAvailableStartTime = 9
let paymentAvailableEndTime = 15

// 현재 시각을 확인하는 함수
func getCurrentHour() -> Int {
    return Calendar.current.component(.hour, from: Date())
}
// 현재 몇분인지 확인하는 함수
func getCurrentMinute() -> Int {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.minute], from: Date())
    return components.minute ?? 0
}

func isPaymentAllowed() -> Bool {
    let currentHour = getCurrentHour()
    return currentHour >= paymentAvailableStartTime && currentHour < paymentAvailableEndTime
}

var shoppingList = [Food]()
var delay: UInt32 = 3


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

var accountList = [Account]()

func newAccount(name: String, balance: Int) -> Account {
    let account = Account(accountName: name, currentBalance: balance)
    accountList.append(account)
    return account
}

var account = newAccount(name: "Daisy", balance:  Int.random(in: 50000...1000000))
//account.printBalance()

print(intro)
// menu
var hasShownMessage = false
while true {
  if isPaymentAllowed() {
    hasShownMessage = false // 결제 가능한 상태로 진입하면 다시 false로 설정
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
      showShoppingList()
    case "0":
      exit(0)
    default:
      print("잘못된 입력입니다.")
    }
  } else {
    if !hasShownMessage {
      print("현재는 결제가 불가능한 시간대입니다. \(paymentAvailableStartTime)시부터 \(paymentAvailableEndTime)시까지 결제가 가능합니다.")
      print("현재 시각: \(getCurrentHour())시 \(getCurrentMinute())분")
      sleep(1) // 메시지를 잠시 보여주기 위해 1초 대기
      hasShownMessage = true // 메시지를 한 번 출력했으므로 true로 설정하여 다시 출력되지 않도록 함
    }
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
    addShoppingList(icecreamList[Int(index)!-1])
}

// show icecream cake menu
func showIcecreamCake() {
    for i in 0...icecreamCakeList.count-1 {
        print("\(i+1)." + icecreamCakeList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addShoppingList(icecreamCakeList[Int(index)!-1])
}

// show drink menu
func showDrink() {
    for i in 0...drinkList.count-1 {
        print("\(i+1)." + drinkList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addShoppingList(drinkList[Int(index)!-1])
}

// show dessert menu
func showDesert() {
    for i in 0...dessertList.count-1 {
        print("\(i+1)." + dessertList[i].displayInfo())
    }
    guard let index = readLine() else {
        return print("숫자가 입력되지 않았습니다,")
    }
    addShoppingList(dessertList[Int(index)!-1])
}

func addShoppingList(_ food: Food) {
    print("\(food.name)을 장바구니에 담으시겠습니까? \n 1. 네    2. 아니요")
    guard let num = readLine() else {
        print("숫자가 입력되지 않았습니다.")
        return showIcecream()
    }
    if num == "1" {
        shoppingList.append(food)
        account.withdraw(value: food)
        print("장바구니에 \(food.name)을 담았습니다.")
    } else if num == "2" {
        print("이전 화면으로 돌아갑니다.")
        showIcecream()
    } else {
        print("숫자를 잘못 입력하셨습니다.")
        showIcecream()
    }
}

func showShoppingList() {
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
