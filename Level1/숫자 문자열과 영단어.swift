import Foundation

let number:Dictionary<String, String> = ["zero" : "0", "one" : "1", "two" : "2", "three" : "3", "four" : "4", "five" : "5", "six" : "6", "seven" : "7", "eight" : "8", "nine" : "9"]

func solution(_ s:String) -> Int {
    var answer:String = ""
    var word:String = ""
    for index in s.indices{
        if s[index] >= "0" && s[index] <= "9"{
            answer.append(s[index])
        }else{
            word.append(s[index])
            if number[word] != nil{
                answer.append(number[word]!)
                word = ""
            }
        }

    }
    return Int(answer)!
}

// 나중에 알게된 풀이
// func solution(_ s:String) -> Int {
//     var answer:String = s
//     answer = answer.replacingOccurrences(of: "zero", with: "0")
//     answer = answer.replacingOccurrences(of: "one", with: "1")
//     answer = answer.replacingOccurrences(of: "two", with: "2")
//     answer = answer.replacingOccurrences(of: "three", with: "3")
//     answer = answer.replacingOccurrences(of: "four", with: "4")
//     answer = answer.replacingOccurrences(of: "five", with: "5")
//     answer = answer.replacingOccurrences(of: "six", with: "6")
//     answer = answer.replacingOccurrences(of: "seven", with: "7")
//     answer = answer.replacingOccurrences(of: "eight", with: "8")
//     answer = answer.replacingOccurrences(of: "nine", with: "9")
//     return Int(answer)!
// }
