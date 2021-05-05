/* Any, AnyObject, nil */

import Swift

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */
 
 // MARK: - Any
 var someAny: Any = 100
 someAny = "어떤 타입도 수용 가능합니다."
 someAny = 123.12
 
 
 // let someDouble: Double = someAny
 
 
 // MARK: - AnyObject
 
 class SomeClass {}
 
 var someAnyObject: AnyObject = someClass()
 
 //someAnyObject = 123.12
 // 클래스의 인스턴스가 아닌 더블 타입을 넣으려고 하니 에러가 발생
 
 
 
 // MARK: - nil
 
 //someAny = nil
 //someAnyObject = nil
 
 // 어떤 데이터 타입을 넣을 수 있지만 빈 값은 넣을 수가 없다.