/* 열거형 */

import Swift

// MARK: - 정의

// enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의합니다
// 각 case는 소문자 카멜케이스로 정의합니다
// 각 case는 그 자체가 고유의 값입니다

// MARK: 열거형 사용

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}


var day: Weekday = Weekday.mon  // 열거형의 케이스를 나타내는 문법은 열거형.타입이름
day = .fri                      // 축약도 가능, 근데 처음에 선언을 애매하게 해주면 축약 불가능

print(day)

// 스위치의 비교값에 day라는 열거형 값이 들어가 있기 때문에 케이스는 한정적이라고 컴파일러는 알 수 있다.
// 그래서 케이스를 축약해서 사용이 가능하다.
switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다.")
case Weekday.fri:
    print("불금!")
case .sat, .sun:
    print("신나는 주말")
}


// MARK: - 원시값

// C언어의 enum처럼 정수값을 가질 수도 있다
// rawValue를 사용하면 된다
// case별로 각각 다른 값을 가져야한다

enum Fruit: Int {   // 열거형의 이름 뒤에 타입을 명시해주면 된다.
    case apple = 0
    case grape = 1  // C처럼 자동으로 1씩 늘어난다. 그래서 저 1을 지워도 1로 할당이 된다.
    case peach      // 얘는 그럼 2
//  case mango = 0
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)") //꺼내올때는 기존에 스위프트에서 사용하는 방법처럼 사용이 가능하다.
// Fruit.peach.rawValue == 2

// 정수 타입 뿐만 아니라
// Hashtable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있습니다.

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university // 문자열의 경우에는 0,1,2,3 뭐 이렇게 늘어나는게 아니니까, 케이스의 이름 그대로 rawValue에 들어간다.
}


print("Schaool.middle.rawValue == \(School.middle.rawValue)")
// School.middle.rawValue == 중등

print("School.university.rawValue == \(School.university.rawValue)")
// School.university.rawValue == university


// MARK: 원시값을 통한 초기화

// rawValue 를 통해 초기화 할 수 있다
// rawValue 가 case에 해당하지 않을 수 있으므로
// rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입이다

// let apple: Friut = Fruit(rawValue: 0) // 기본으로 했을 경우엔 아래와 같은 예상이 불가능하기 때문에 컴파일러에서 에러를 낸다.
let apple: Fruit? = Fruit(rawValue: 0) // 만약 케이스가 없을 경우에 nil이 나올것을 예상할 수 있게 옵셔널을 사용해야 한다.

if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5에 해당하는 케이스는 \(orange)입니다")
} else {
    print("rawValue 5에 해당하는 케이스가 없습니다.")
}

// MARK: 메서드

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("따듯한 봄")
        case .jun, .jul, .aug:
            print("더운 여름")
        case .sep, .oct, .nov:
            print("선선한 가을")
        case .dec, .jan, .feb:
            print("추운 겨울")
        }
    }
}


Month.sep.printMessage()
