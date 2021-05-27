/* 프로퍼티 감시자 */

import Swift

// 프로퍼티 감시자를 사용하면 프로퍼티 값이 변경될 때 원하는 동작을 수행 할 수 있습니다.

// MARK : - 정의

struct Money {
    // 프로퍼티 감시자 사용
    // 저장 프로퍼티이다. 뒤에다가 블럭을 만든다.
    var currencyRate : Double = 1100 {
        // 바뀌기 직전에 호출
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)으로 변경될 예정입니다.")
        }
        // 바뀌었다. 에 호출
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)으로 변경 되었습니다.")
        }
    }
    
    // 프로퍼티 감시자 사용
    var dollar: Double = 0 {
        //willSet의 암시적 매개변수 이름 newValue
        willSet {
            print("\(dollar)에서 \(newValue)달러로 변경될 예정입니다.")
        }
        // didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)에서 \(currencyRate)달러로 변경될 예정입니다.")
        }
    }
    // 연산 프로퍼티
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
        
        /* 프로퍼티 감시자와 연산 프로퍼티 기능을 동시에 사용할 수 없습니다. */
        // willSet, didSet은 저장되는 값이 변경될때 사용하는건데 연산 프로퍼티에 있으면 이미 변경되는걸 굳이 부르지 않는건가? 잘 모르겠다.
        /*willSet {
            
        }
         */
    }
}


// MARK : - 사용

var moneyInMyPocket: Money = Money()

// 환율이 1100.0 에서 1150.0 으로 변경될 예정입니다.
moneyInMyPocket.currencyRate = 1150
// 환율이 1100.0 에서 1150.0 으로 변경 되었습니다.

// 달러가 0 에서 10.0 으로 변경될 예정입니다.
moneyInMyPocket.dollar = 10
// 달러가 0 에서 10.0 으로 변경 되었습니다.

print(moneyInMyPocket.won)

// 프로퍼티 감시자 기능은
// 함수, 메서드, 클로저, 타입 등의 외부에 위치한
// 지역/전역 변수에도 모두 사용 가능합니다.

var a: Int = 100 {
    willSet {
        print("\(a)에서 \(newValue)으로 변경될 예정입니다")
    }
    
    didSet {
        print("\(oldValue)에서 \(a)으로 변경되었습니다.")
    }
}


a = 200
