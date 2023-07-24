
import Foundation

class Order {
    func printMenu() { // 이런;;
        print("덜덜. 뭔가 잘못됐다. 덜덜.")
    }

    func displayInfo(userChoice: Int) {
        print("뭔가 잘못됐다. 클났다. 덜덜")
    }
}

class IceCream: Order {
    let iceCreams = [ "", "민트 초콜렛 칩", "레인보우 샤베트", "파스타치오 아몬드", "엄마는 외계인", "아몬드 봉봉" ]
    let prices = [ 0, 4500, 5500, 5000, 6500, 4000 ]
    
    override func displayInfo(userChoice: Int) {
        print("\(iceCreams[userChoice])은(는) \(prices[userChoice])입니다. 맛있겠다~!")
    }
}

class IceCreamCake: Order {
    let iceCreamCakes = [ "", "골라먹는 27 큐브", "수줍은 웰시코기의 숨바꼭질", "미니 골라먹는 와츄원", "미니 해피버스데이 케이크", "골라먹는 스노우 볼" ]
    let prices = [ 0, 10000, 30000, 15000, 25500, 35000 ]
    
    override func displayInfo(userChoice: Int) {
        print("\(iceCreamCakes[userChoice])은(는) \(prices[userChoice])입니다. 맛있겠다~!")
    }
}

class Beverage: Order {
    let beverages = [ "", "엄마는 외계인 블라스트", "아이스 아메리카노", "아몬드 봉봉 블라스트", "딸기 연유 라떼", "카푸치노 블라스트 모카" ]
    let prices = [ 0, 5700, 4500, 5500, 5500, 6000 ]
    
    override func displayInfo(userChoice: Int) {
        print("\(beverages[userChoice])은(는) \(prices[userChoice])입니다. 맛있겠다~!")
    }
}

class Dessert: Order {
    let desserts = [ "", "소금 우유 아이스 모찌", "모나카 우도 땅콩 & 바닐라", "맥심 스틱바 모카골드 마일드", "오리지널 팥 인절미 빙수" ]
    let prices = [ 0, 2500, 3000, 3500, 6000 ]
    
    override func displayInfo(userChoice: Int) {
        print("\(desserts[userChoice])은(는) \(prices[userChoice])입니다. 맛있겠다~!")
    }
}

let mainMenu = """
이번 여름 시원하게 해드릴 배스킨 라빈스에 오신것을 환영합니다~! （˶′◡‵˶）
[ BASKIN ROBBINS MENU ]
1. Ice Cream       | 아이스크림
2. Ice Cream Cake  | 아이스크림 케이크
3. Beverages       | 음료
4. Dessert         | 디저트
0. 종료             | 프로그램 종료
"""

let iceCreamMenu = """
[ ICECREAM MENU ]
1. 민트 초콜렛 칩   | W 4.5 | 쿨한 당신의 선택! 상쾌한 민트향에 초코칩까지!
2. 레인보우 샤베트    | W 5.5 | 쿨한 당신의 선택! 상쾌한 민트향에 초코칩까지!
3. 파스타치오 아몬드 | W 5.0 | 피스타치오향과 아몬드가 만나 고소함이 두배!
4. 엄마는 외계인  | W 6.5 | 피스타치오향과 아몬드가 만나 고소함이 두배!
5. 아몬드 봉봉    | W 4.0 | 피스타치오향과 아몬드가 만나 고소함이 두배!
0. 뒤로가기      | 뒤로가기
"""

let iceCreamCakeMenu = """
[ ICECREAM CAKE MENU ]
1. 골라먹는 27 큐브   | W 10.0 | 9가지 맛 아이스크림 바이트를 초콜릿 판 위에 쌓아올려 전체 다 취식 가능한 실속있는 케이크
2. 수줍은 웰시코기의 숨바꼭질   | W 30.0 | 부끄러움 많은 웰시코기의 앙증맞은 뒷모습을 표현한 케이크
3. 미니 골라먹는 와츄원 | W 15.4 | BR 베스트셀러 골라먹는 와츄원의 미니 버전! 다양한 맛을 골라먹는 매력에 가성비까지 더해진 매력만점 미니 케이크
4. 미니 해피버스데이 케이크  | W 25.0 | BR 베스트셀러 해피 버스데이 케이크의 미니 버전! 레트로 감성과 레터링 초콜릿으로 더욱 예쁜 미니 케이크
5. 골라먹는 스노우 볼     | W 35.0 | 동글동글 스노우 볼을 가득! BR의 아이스크림을 한입에 쏙~ 넣어 즐길 수 있는 스노우 볼 케이크
0. 뒤로가기      | 뒤로가기
"""

let beverages = """
[ BEVERAGES MENU ]
1. 엄마는 외계인 블라스트  | W 5.7 | 동글동글 스노우 볼을 가득! BR의 아이스크림을 한입에 쏙~ 넣어 즐길 수 있는 스노우 볼 케이크
2. 아이스 아메리카노    | W 4.5 | 카페브리즈 커피를 가장 부드럽게 즐길 수 있는 따뜻한 아메리카노
3. 아몬드 봉봉 블라스트 | W 5.5 | 고소하고 부드러운 바닐라 풍미에 식감이 일품인 초콜릿 코팅 아몬드가 토핑된 블라스트
4. 딸기 연유 라떼 | W 5.5 | 달콤한 연유와 딸기과육이 들어있는 딸기라떼에 베리베리 스트로베리 아이스크림을 토핑한 부드러운 라떼
5. 카푸치노 블라스트 모카    | W 6.0 | 달콤한 초코시럽이 첨가되어 더욱 깊고 풍부한 맛이 특징
0. 뒤로가기      | 뒤로가기
"""

let dessert = """
[ DESSERT MENU ]
1. 소금 우유 아이스 모찌   | W 2.5 | 쫀득한 찹쌀떡 속에 고소한 우유 아이스크림과 짭쪼름한 소금이 어우러진 디저트
2. 모나카 우도 땅콩 & 바닐라   | W 3.0 | 돌하르방 모나카 속에 바닐라 아이스크림과 우도 땅콩이 어우러진 디저트
3. 맥심 스틱바 모카골드 마일드 | W 3.5 | 맥심 모카골드 마일드의 풍미를 그대로 담아 시원하게 즐기는 스틱바
4. 오리지널 팥 인절미 빙수  | W 6.0 | 우유얼음에 쫄깃한 인절미, 견과류, 통단팥이 조화롭게 어우러진 빙수
0. 뒤로가기      | 뒤로가기
"""


func iceCreamRun() {
    let iceCreamOrder = IceCream()

    print(iceCreamMenu)

    var isRunning = true
    while isRunning {
        print("->", terminator: " ")
        
        let userInput = readLine()

        switch userInput {
        case "1", "2", "3", "4", "5":
            iceCreamOrder.displayInfo(userChoice: Int(userInput!)!)
        case "0":
            isRunning = false
        default:
            print("잘못된 메뉴입니다. 다시 입력해주세요.")
        }
    }
}

func iceCreamCakeRun() {
    let iceCreamCakeOrder = IceCreamCake()

    print(iceCreamCakeMenu)

    var isRunning = true
    while isRunning {
        print("->", terminator: " ")

        let userInput = readLine()

        switch userInput {
        case "1", "2", "3", "4", "5":
            iceCreamCakeOrder.displayInfo(userChoice: Int(userInput!)!)
        case "0":
            isRunning = false
        default:
            print("잘못된 메뉴입니다. 다시 입력해주세요.")
        }
    }
}

func beveragesRun() {
    let beveragesOrder = Beverage()

    print(beverages)

    var isRunning = true
    while isRunning {
        print("->", terminator: " ")

        let userInput = readLine()

        switch userInput {
        case "1", "2", "3", "4", "5":
            beveragesOrder.displayInfo(userChoice: Int(userInput!)!)
        case "0":
            isRunning = false
        default:
            print("잘못된 메뉴입니다. 다시 입력해주세요.")
        }
    }
}

func dessertRun() {
    let dessertOrder = Dessert()

    print(dessert)

    var isRunning = true
    while isRunning {
        print("->", terminator: " ")

        let userInput = readLine()

        switch userInput {
        case "1", "2", "3", "4":
            dessertOrder.displayInfo(userChoice: Int(userInput!)!)
        case "0":
            isRunning = false
        default:
            print("잘못된 메뉴입니다. 다시 입력해주세요.")
        }
    }
}

// 얘 실행시키면 쫘좌좍 다 같이 실행 됨
func mainRun() {
    print(mainMenu)

    var isRunning = true
    while isRunning {
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
            iceCreamRun()
            print(mainMenu)
        case "2":
            iceCreamCakeRun()
            print(mainMenu)
        case "3":
            beveragesRun()
            print(mainMenu)
        case "4":
            dessertRun()
            print(mainMenu)
        case "0":
            isRunning = false
        default: // 메뉴 외의 입력이 들어 왔을 때
            print("잘못된 메뉴입니다. 다시 입력해주세요.")
        }
    }
}

mainRun()
