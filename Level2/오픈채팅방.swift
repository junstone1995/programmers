import Foundation

func solution(_ record:[String]) -> [String] {
    var nickName: [String:String] = [:]
    var ret :[String] = []

    for i in record{
        let arr = i.components(separatedBy: " ")

        if arr.count > 2{
            nickName[arr[1]] = arr[2]
        }
    }
    for i in record{
        let arr = i.components(separatedBy: " ")

        let name = nickName[arr[1]]!

        if arr[0] == "Enter"{
            ret.append("\(name)님이 들어왔습니다.")
        }else if arr[0] == "Leave"{
            ret.append("\(name)님이 나갔습니다.")
        }
    }
    return ret
}
