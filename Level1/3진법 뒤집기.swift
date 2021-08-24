import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    var num:[Int] = []
    var cnt:Int = 1
    while n > 0 {
        num.append(n%3)
        n /= 3
    }
    num = num.reversed()
    for i in 0..<num.count{
            n += num[i] * cnt
            cnt *= 3
    }
    return n
}
