/* 함수 */

import Swift

// MARK: - 매개변수 기본값

func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다.
greeting(friend: "ITlearning")
//greeting(friend: "Jhon", me: "eric")

// MARK: - 전달인자 레이블

// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확하게 하거나
// 함수 사용자의 입장에서 표현하고자 할 때 사용합니다.
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때는 전달인자 레이블을 사용해야 한다.
greeting(to: "haha", from: "ITlearning")

// MARK : - 가변 매개변수

// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있다.
// 가변 매개변수를 함수당 하나만 가질 수 있다.

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriends(me: "ITlearning", friends: "haha", "mic", "wing"))
print(sayHelloToFriends(me: "Itlearning"))

/*
  위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능합니다.
 */

// MARK : - 데이터 타입으로서의 함수

// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이다.
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
// 매개변수를 통해 전달할 수도 있다.

// MARK: 함수의 타입 표현
// 반환타입을 생략할 수 없습니다.

var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("Eric", "ITlearning")

someFunction = greeting(friend:me:)
someFunction("Eric", "ITlearning")

// 타입이 다른 함수는 할당할 수 없습니다.
// someFunction = sayHelloToFriends(me: friends:)
// friends가 가변 매개변수이기 때문에 타입이 달라 할당할 수 없다.

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

// Hello jenny! I'm mike
runAnother(function: greeting(friend:me:))

// Hello jenny! I'm mike
runAnother(function: someFunction)
