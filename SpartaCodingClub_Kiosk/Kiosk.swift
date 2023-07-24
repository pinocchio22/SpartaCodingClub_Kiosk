//
//  Kiosk.swift
//  SpartaCodingClub_Kiosk
//
//  Created by Jack Lee on 2023/07/24.
//

import Foundation

struct Kiosk {
    private var greet: String = """
                        이번 여름 시원하게 해드릴 배스킨 라빈스에 오신것을 환영합니다~! （˶′◡‵˶）\n
                        [ BASKIN ROBBINS MENU ]
                        1. 아이스크림    2. 아이스크림 케이크    3. 음료   4. 디저트  0. 종료
                        """
    private var menu: MenuBoard?

    func greetCustomer() {
        print(greet)
    }
    
    func showMenu() {}
}

let kiosk = Kiosk()
