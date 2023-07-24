//
//  main.swift
//  Sparta_Kiosk
//
//  Created by t2023-m0056 on 2023/07/24.
//

import Foundation

while true {
    kiosk.greetCustomer()
    let userInput = readLine()

    switch userInput {
    case "1": print("눈이 띙해지는 아이스크림!")
        for iceCream in iceCreamList {
            iceCream.displayInfo()
        }
        let userChoice = readLine()
    case "2": print("\n가족과 함께 31일 넘게 즐겨 먹는 케이크~\n")
        for iceCreamCake in iceCreamCakeList {
            iceCreamCake.displayInfo()
        }
        let userChoice = readLine()
    case "3": print("\n아이스크림이 음료가 된다!? ㄴㅇㄱ\n")
        for drink in drinkList {
            drink.displayInfo()
        }
        let userChoice = readLine()
    case "4": print("\n난 포기 못해 디저트!\n")
        for dessert in dessertList {
            dessert.displayInfo()
        }
        let userChoice = readLine()
    case "0": print("\n배스킨 라빈스를 찾아주셔서 감사합니다. 키오스크를 종료합니다.")
        break
    default: print("🚨 1~4 또는 0번을 입력해주세요.\n")
    }
}
