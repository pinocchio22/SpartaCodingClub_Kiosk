//
//  main.swift
//  Sparta_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

let paymentAvailableStartTime = 9

let paymentAvailableEndTime = 23

// 현재 시각을 확인하는 함수
func getCurrentHour() -> Int {
    return Calendar.current.component(.hour, from: Date())
}

func isPaymentAllowed() -> Bool {
    let currentHour = getCurrentHour()
    return currentHour >= paymentAvailableStartTime && currentHour < paymentAvailableEndTime
}

func getCurrentMinute() -> Int {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.minute], from: Date())
    return components.minute ?? 0
}

// 결제 시간 나타내기
let now = Date()
let date = DateFormatter()
date.locale = Locale(identifier: "ko_kr")
date.timeZone = TimeZone(abbreviation: "KST")
date.dateFormat = "yyyy-MM-dd HH:mm:ss"
let kr = date.string(from: now)
var shoppingList = [Food]()
var delay: UInt32 = 3


let intro = """
이번 여름 시원하게 해드릴 배스킨 라빈스에 오신것을 환영합니다~! （˶′◡‵˶）
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
var account = newAccount(name: "Daisy", balance: Int.random(in: 5000...1000000))

func newAccount(name: String, balance: Int) -> Account {
    let account = Account(accountName: name, currentBalance: balance)
    accountList.append(account)
    return account
}

DispatchQueue.global().async {
    while true {
        sleep(5)
        print("\n현재 주문 대기 수: \(Account.currentItem)")
    }
}

// 얘 실행시키면 쫘좌좍 다 같이 실행 됨
func mainRun() {
    var hasShownMessage = false
    print(intro)
    while true {
        if isPaymentAllowed(){
            hasShownMessage = false
            print("->", terminator: " ")
            // 뭔가 잘못된 입력이 들어왔을때
            let userInput = { ( ) -> String in
                guard let userInputCheck = readLine() else {
                    return ( "잘못된 메뉴입니다. 다시 입력해주세요." )
                }
                return userInputCheck
            }
            switch userInput() {
            case "1":
                icecreamRun()
                print(intro)
            case "2":
                icecreamcakeRun()
                print(intro)
            case "3":
                drinkRun()
                print(intro)
            case "4":
                dessertRun()
                print(intro)
            case "5":
                showShoppingList()
                print(intro)
            case "0":
                exit(0)
            default: // 메뉴 외의 입력이 들어 왔을 때
                print("잘못된 메뉴입니다. 다시 입력해주세요.")
            }
        } else {
            if !hasShownMessage {
                print("현재는 결제가 불가능한 시간대입니다. \(paymentAvailableStartTime)시부터 \(paymentAvailableEndTime)시까지 결제가 가능합니다.")
                print("현재 시각: \(getCurrentHour())시 \(getCurrentMinute())분")
                sleep(3) // 메시지를 잠시 보여주기 위해 1초 대기
                hasShownMessage = true // 메시지를 한 번 출력했으므로 true로 설정하여 다시 출력되지 않도록 함
            }
        }
    }
}

func addShoppingList(_ food: Food) {
    print("\(food.name)을 장바구니에 담으시겠습니까? \n 1. 네  2. 아니요")
    guard let num = readLine() else {
        print("숫자가 입력되지 않았습니다.")
        return
    }
    if num == "1" {
        shoppingList.append(food)
        print("장바구니에 \(food.name)을 담았습니다.")
    } else if num == "2" {
        print("넵 안 담겠슴다")
    } else {
        print("숫자를 잘못 입력하셨습니다.")
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
        print("결제하시겠습니까?")
        print("1. 예   2. 아니오")
        let input = readLine()
        if input == "1" {
            print(kr)
            shoppingList.removeAll()
        } else {
            print("결제 하지 않겠습니다.")
        }
    }
    sleep(3)
}

mainRun()
