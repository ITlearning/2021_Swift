/* 조건문 */

import Swift

let someInteger = 100

// MARK: - if-else

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
}  else {
    print("100")
} // 100

// 스위프트의 조건에는 항상 Bool 타입이 들어와야한다.
// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
// 컴파일 오류가 발생한다.

// MARK : - switch

// 범위 연산자를 활용하면 더욱 쉽고 유용하다.
switch someInteger {
case 0:
    print("zero")
case 1..<100: // .. 이면 1이상100미만이라는뜻
    print("1~99")
case 100:
    print("100")
case 101...Int.max: // ... 이면 101이상 max 이하 (max까지 포함되는 것)
    print("over 100")
default:
    print("unknown")
}


// 정수 외의 대부분의 기본 타입을 사용할 수 있다.
switch "ITlearning" {
case "jake":
    print("jake")
case "mina":
    print("mina")
case "ITlearning":
    print("ITlearning")
default:
    print("unknown")
}
// case 구문에 break를 따로 걸지 않아도 기본적으로 걸어준다.
// 만일 break를 쓰지 않은 것처럼 하고 싶을 경우엔 fallthrough를 사용하면 된다.
