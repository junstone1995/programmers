func solution(_ n:Int64) -> [Int] {
    var ret:[Int] = []
    var n = Int(n)

    while n > 0 {
        ret.append(n % 10)
        n /= 10
    }
    return ret
}
