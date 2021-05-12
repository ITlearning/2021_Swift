/* 함수 */

import Swift

// MARK: - 함수의 선언

// MARK: 함수선언의 기본형태
//func  함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//    함수 구현부
// return 반환값
//}


// 함수선언의 기본형태
// 예)
// sum이라는 이름을 가지고
// a와 b라는 Int 타입의 매개변수를 가지며
// Int 타입의 값을 반환하는 함수
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// 반환 값이 없는 함수
func printMyName(name: String) -> Void {
    print(name)
}

// 반환 값이 없는 경우, 반환 타입(Void)을 생략해 줄 수 있습니다.
func printYourName(name: String) {
    print(name)
}

// 매개변수가 없는 함수
func maximumIntegerValue() -> Int {
    return Int.max
}
