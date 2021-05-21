/* 구조체 */

import Swift

// MARK : - 정의

// struct 이름 {
//      /* 구현부 */
//}


// MARK : 프로퍼티 및 메서드
                // 메서드 - 타입 안에 들어가 있는 함수
struct Sample { // 프로퍼티 - 어떤 함수 안에 들어가 있는 변수
    var mutableProperty: Int = 100 // 가변 프로퍼티
    let immutableProperty: Int = 100 // 불편 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    static func typeMethod() {
        print("type method")
    }
}


// MARK: 구조체 사용
// 가변 인스턴스
var mutable: Sample = Sample()

// mutable.mutableProperty = 200
// 가변 프로퍼티는 변환이 가능하지만
// mutable.immutableProperty = 200
// 불변 프로퍼티는 변환이 불가능하다.

// 불변 인스턴스

let immutable: Sample = Sample()

//immutable.mutableProperty = 200 // let 으로 선언한 불변 인스턴스는 아무리 안에 가변 프로퍼티로 만들어놨다고 해도 변경이 불가능하다.
//immutable.immutableProperty = 200 // 이것도 마찬가지이다.

// 타입 프로퍼티 및 메소드
// Sample 타입 자체가 사용할 수 있는 프로퍼티와, 메소드를 뜻한다.
Sample.typeProperty = 300

Sample.typeMethod() // type method

//mutable.typeProperty = 400 // 인스턴스에서 타입 프로퍼티를 사용하려고 하면 에러가 발생한다.
//mutable.typeMethod() // 인스턴스에서 타입 메서드를 사용하려고 해도 에러가 발생한다. 따라서 타입 프로퍼티와 메서드를 사용하려면 위와 같이 Sample 과 같은 타입이 있어야 한다.


// MARK: - 학생 구조체

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift" // class 앞뒤로 있는 것을 사용할 경우 기존에 있는 단어들을 무시하고 오로지 단어 그 자체의 기능으로 사용할 수 있게 해준다.
    // 타입 메서드
    static func selfIntroduce() {
        print("학생입니다.")
    }
    // 인스턴스에서 사용할 수 있는 인스턴스 메서드
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name) 입니다.")
    }
}

// Student 라는 타입이 자체적으로 사용할 수 있는 selfIntroduce() 라는 것을 만들어 뒀기 때문에 학생타입입니다 라고 실행되는 타입 메서드가 실행되었습니다.
Student.selfIntroduce() // 학생 타입입니다.

var ITlearning: Student = Student()
ITlearning.name = "ITlearning"
ITlearning.class = "스위프트"
ITlearning.selfIntroduce()
// 인스턴스를 만들어준 다음에, 인스턴스 메서드로 구현된 메서드를 호출하게 된다.


let jina: Student = Student()

// 불면 인스턴스이므로 프로퍼티 값 변경 불가
// 컴파일 오류 발생
//jina.name = "jina"

//그렇지만 메서드는 호출은 가능하다.
jina.selfIntroduce()
