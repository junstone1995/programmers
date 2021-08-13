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
