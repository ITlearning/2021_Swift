/* 클래스 */
// 구조체는 값 타입이지만 클래스는 참조 타입이라는 것이 차이점이다.
// Swift의 클래스는 다중상속이 되지 않는 다는 기억하자.
import Swift

// MARK: - 정의

class 이름 {
    /* 구현부 */
}

// MARK: 프로퍼티 및 메서드
// 구조체와 매우 유사하게 프로퍼티와 메서드를 가질 수 있다.
class Sample {
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메서드 - 나중에 상속을 받았을 때 재정의가 가능하냐, 할 수 없냐에 따라 나눠진다.
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}


// MARK: 클래스 사용
// 클래스는 구조체와 다르게 var 로 선언이 됐든 let으로 선언이 됐든간에, mutableProperty(가변 프로퍼티) 가 변경이 가능하다.
var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200

let immutableReference: Sample = Sample()

immutableReference.mutableProperty = 200
//immutableReference.immutableProperty = 200

//immutableReference = mutableReference


// 타입 프로퍼티 및 메서드
// 구조체와 크게 다른 모습을 보여주지 않는다.
Sample.typeProperty = 300
Sample.typeMethod() // type method

//mutableReference.typeProperty = 400
//mutableReference.typeMethod()


// MARK: - 학생 클래스

class Student {
    var name: String = "known"
    var `class`: String = "Swift"
    
    class func selfIntroduce() {
        print("학생입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce() // 학생입니다.

var ITlearning: Student = Student()

ITlearning.name = "Itlearning"
ITlearning.class = "스위프트"
ITlearning.selfIntroduce()

// 가변 프로퍼티를 let으로 인스턴스를 선언했음에도 불구하고 변경이 가능하다.
let enji: Student = Student()
enji.name = "enji"
enji.class = "스위프트"
enji.selfIntroduce()

