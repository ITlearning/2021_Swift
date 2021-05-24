/* 클래스, 구조체/열거형 비교 */
import Swift

// MARK:- Class vs Struct/Enum

struct ValueType { //구조체
    var property = 1
}

class ReferenceType { // 클래스
    var property = 1
}


// Struct
let firstStructInstance = ValueType()           // 구조체 상수에는 구조체 인스턴스를 하나 만들어 할당을 해줬다.
var secondStructInstance = firstStructInstance  // 첫번째 구조체 인스턴스를 할당해줬다.
secondStructInstance.property = 2               // 두번째 인스턴스 값 변경, 똑같은 프로퍼티가 복사가 되어 기존꺼는 1로 되어있고 복사된 값은 2로 변경이 됐다.

print("first struct instance property : \(firstStructInstance.property)")   // 1
print("second struct instance property : \(secondStructInstance.property)") // 2

// Class
let firstClassInstance = ReferenceType()        // 클래스 상수에는 클래스 인스턴스를 하나 만들어 할당을 해줬다.
var secondClassInstance = firstClassInstance    // 첫번째 클래스 인스턴스를 할당해줬다.
secondClassInstance.property = 2                // 두번째 인스턴스 값 변경, 클래스의 경우 메모리의 위치를 전달하기 때문에 모든 property가 변경이 된다.
print("first class instance property : \(firstClassInstance.property)")     // 2
print("second class instance property : \(secondClassInstance.property)")   // 2
