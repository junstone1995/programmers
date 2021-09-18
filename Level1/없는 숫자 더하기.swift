import Foundation

func solution(_ numbers:[Int]) -> Int {

    var check:[Bool] = Array(repeating: false, count: 10)
    var ret = 0
    numbers.forEach{
        if check[$0] == false{
            check[$0] = true
        }
    }
    for i in 0..<check.count{
        if check[i] == false{
            ret += i
        }
    }
    return ret
}
