/* 인스턴스 생성과 소멸 */

// 이니셜라이저와 디이니셜라이저
// init, deinit

import Swift

// MARK: - 프로퍼티 기본값

// 스위프트의 모든 인스턴스는 초기화와 동시에
// 모든 프로퍼티에 유효한 값이 할당되어 있어야 한다
// 프로퍼티에 미리 기본값을 할당해두면
// 인스턴스가 생성됨과 동시에 초기값을 지니게 된다

class PersonA {
    // 모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

let jason: PersonA = PersonA()
jason.name = "jason"
jason.age = 30
jason.nickName = "j"

// 우리는 초기화와 동시에 프로퍼티에 값을 할당하고 싶은데, 그럴 방법이 없다 이말이다.

// MARK: - 이니셜라이저

// 프로퍼티 기본값을 지정하기 어려운 경우에는
// 이니셜라이저를 통해
// 인스턴스가 가져야 할 초기값을 전달할 수 있다

class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    // 이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let hana: PersonB = PersonB(name: "hana", age: 20, nickName: "하나")

// 하나가 없다면?
//let hana: PersonB = PersonB(name: "haha", age: 20, nickName: "")


// MARK: 프로터티의 초기값이 꼭 필요 없을 때
// 옵셔널을 사용!

class PersonC {
    var name: String
    var age: Int
    var nickName: String? // 옵셔널 사용
    
    convenience init(name: String, age: Int, nickName: String) {
        self.init(name: name, age: age) // 중복된 것들은 이미 있는 init을 불러와 사용이 가능하다
        self.nickName = nickName
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "M")

// 암시적 추출 옵셔널은
// 인스턴스 사용에 꼭 필요하지만
// 초기값을 할당하지 않고자 할 때 사용

class Puppy {
    var name: String
    var owner: PersonC! // 꼭 필요한 경우에 느낌표를 찍어준다.
    
    // 이렇게 먼저 이름부터 설정하고 나중에 PersonC를 사용할때 느낌표를 달아준다.
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다")
    }
}

let happy: Puppy = Puppy(name: "Happy")
// happy.goOut()
happy.owner = jenny
happy.goOut()
// happy가 주인 jenny와 산책을 합니다.

// 이렇게 나중에 주인을 지정할 때 암시적 추출 옵셔널을 사용한다


// MARK: 실패가능한 이니셜라이저
// 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우
// 인스턴스 생성에 실패할 수 있다
// 인스턴스 생성에 실패하면 nil을 반환한다
// 그래서 실패가능한 이니셜라이저 반환타입은 옵셔널 타입이다

class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        
        if name.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

// 옵셔널이 아닌 타입으로 인스턴스를 만들려고 하면 안된다.
//let john: PersonD = PersonD(name: "john", age: 23)
let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)
let batman: PersonD? = PersonD(name: "", age: 10)

print(joker) // nil
print(batman) // nil


// MARK: - 디이니셜라이저

// deinit은 클래스의 인스턴스가
// 메모리에서 해제되는 시점에서 호출된다
// 인스턴스가 헤재되는 시점에 해야할 일을 구현할 수 있다

class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}


var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
// donald 가 jenny에게 happy를 인도합니다
