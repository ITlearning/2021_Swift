/* 콘솔로그와 문자열 보간법 */

import Swift

let age: Int = 23

"안녕하세요! 저는 \(age)살입니다."

"안녕하세요! 저는 \(age + 5)살입니다."

print("안녕하세요! 저는 \(age + 5)살입니다.")

print("\n#######################\n")

class Person {
	var name: String = "ITlearning"
	var age: Int = 23
}

let itlearning: Person = Person()

print(itlearning)

print("\n################\n")

dump(itlearning)