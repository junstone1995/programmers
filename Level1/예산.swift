import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let num : [Int] = d.sorted()
    var answer:Int = 0
    var tmp:Int = 0
    for i in 0..<num.count{
        if tmp + num[i] <= budget{
            tmp += num[i]
            answer += 1
        }
    }
    return answer
}
