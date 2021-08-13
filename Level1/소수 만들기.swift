import Foundation

func isPrime(_ num:Int) -> Bool{

    for i in 2..<num{
        if num % i == 0{
            return false
        }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0

    var tmp:[Int] = []
    for i in 0..<nums.count - 2{
        for j in i + 1..<nums.count{
            for k in j + 1..<nums.count{
                tmp.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    tmp.forEach{
        answer += isPrime($0) ? 1 : 0
    }
    return answer
}
