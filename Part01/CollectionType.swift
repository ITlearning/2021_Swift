/* 컬렉션 타입 */
/* Array, Dictionary, Set */

import Swift

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
*/

// MARK: - Array

// 빈 Int Array 생성
var integers: Array<Int> = Array<Int>() // 빈 Array 생성
integers.append(1)
integers.append(100)
//integers.append(101.1)
print(integers)

// 가지고 있는지 확인하는 함수
print(integers.contains(100)) // ture
print(integers.contains(99))  // false

// 지우는 함수
integers.remove(at:0)
integers.removeLast()
integers.removeAll()

// 비어있는 상태에서 호출하면 에러
//intgers[0]

// 다양한 생성 방법

// Array<Double>와 [Double]는 동일한 표현
// 빈 Double Array 생성
var doubles: Array<Double> = [Double]()

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
// [] 는 새로운 빈 Array
var characters: [Character] = []

// let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1,2,3]

// immutableArray.append(4)
// immutableArray.removeAll()

// MARK: - Dictionary

//Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "Value"
anyDictionary["anotherKey"] = 100

print(anyDictionary)

anyDictionary["someKey"] = "Dictionary"
print(anyDictionary)

anyDictionary.removeValue(forKey: "anotherKey")
print(anyDictionary)

anyDictionary["someKey"] = nil
print(anyDictionary)

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "ITlearning", "gender": "male"]

//emptyDictionary["key"] = "value"
// 상수에 넣지도 못함 불확실성 때문에 오류가 난다.
// let someValue: String = initalizedDictionary["name"]


// MARK: - Set

// 빈 Int Set 생성
var integerSet: Set<Int> = Set<Int> ()

integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
// 이래도 같은 값은 한번만 추가 된다.

