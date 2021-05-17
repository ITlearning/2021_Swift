import Swift
//someOptionalPram에 nil이 할당 될 수 있다.
func someFunction(someOptionalParam: Int?) {
    //...
}

// someOptionalPram에 nil이 할당 될 수 없다.
func someFunction(someOptionalParam: Int) {
    
}


someFunction(someOptionalParam: nil)


/* 옵셔널 문법과 선언 */

/*enum Optional<Wrapped>: ExpressibleByNilLiteral {
    
    case none
    case some(Wrapped)
}*/

//let optionalValue: Optional<Int> = nil
//let optionalValue: Int? = nil


/* 옵셔널 표현 */
// 느낌표를 이용한 암시적 추출 옵셔널

var implicitlyUnweappedOptionalValue: Int! = 100

switch implicitlyUnweappedOptionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

// 기존 변수처럼 사용가능
implicitlyUnweappedOptionalValue = implicitlyUnweappedOptionalValue + 1

// nil 할당 가능
implicitlyUnweappedOptionalValue = nil

// 잘못된 접근으로 인한 런타임 오류 발생
//implicitlyUnweappedOptionalValue = implicitlyUnweappedOptionalValue + 1


// 물음표를 이용한 옵셔널
var optionalValue: Int? = 100

switch optionalValue {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("value is \(value)")
}

// nil 할당 가능
optionValue = nil

// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
// optionalValue = optionalValue + 1
