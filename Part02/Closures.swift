/* 클로저 */

import Swift

// 코드의 블럭
// 일급 시민(first-citizen)
// 변수, 상수 등으로 저장, 전달인자로 전달이 가능
// 함수: 이름이 있는 클로저

// MARK:  - 정의

//{ (매개변수 목록) -> 반환타입 in
//      실행코드
//}

// 함수를 사용한다면
func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumReslut: Int = sumFunction(a: 1, b: 2)

print(sumReslut) // 3

// 클로저의 사용
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

sumReslut = sum(1,2)
print(sumReslut)

// 함수는 클로저의 일종이므로
// sum 변수에는 당연히 함수도 할당할 수 있다.
sum = sumFunction(a:b:)

sumReslut = sum(1,2) // 이러면 sumFunction 이 호출이 된것이다.

// MARK: - 함수의 전달인자로서의 클로저

let add: (Int, Int) -> Int  // 각 상수들에 클로저들을 할당해 주었다.
add = { (a: Int, b:Int) -> Int in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in
    return a / b
}

// 메소드라는 이름으로 클로저를 넘겨준다 라고 표현을 했고, 함수 안에서 전달받은 클로저를 호출했다.
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a,b)
}


var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)   // calculate 에 숫자들을 넣고 메소드에 아까 만들어준 클로저를 넣어준다.

print(calculated)

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
}) // 이렇게 클로저를 여기서 바로 생성해서 넣어줘도 된다.

print(calculated)
