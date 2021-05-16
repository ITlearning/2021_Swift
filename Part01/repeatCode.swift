
/* 반복문 */

import Swift

var integers = [1,2,3]
let people = ["ITlearning": 10, "Eric": 15, "Mike": 12]

// MARK : - for-in

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입이다.
for (name, age) in people {
    print("\(name): \(age)")
}

// MARK: - while

while integers.count > 1 {
    integers.removeLast()
}

// MARK: - repeat-while

repeat {
    integers.removeLast()
} while integers.count > 0

