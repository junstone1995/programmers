import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {

    var rightCount:Int = 0
    var answer:[Int] = []
    var zeroCount:Int = 0
    for i in 0..<win_nums.count{
        for j in 0..<lottos.count{
            if win_nums[i] == lottos[j]{
                rightCount += 1
            }
        }
        if lottos[i] == 0{
            zeroCount += 1
        }
    }
    answer.append(7 - (zeroCount + rightCount))
    answer.append(7 - rightCount)
    if answer[0] == 7{
        answer[0] = 6
    }
    if answer[1] > 6{
        answer[1] = 6
    }
    return answer
}
