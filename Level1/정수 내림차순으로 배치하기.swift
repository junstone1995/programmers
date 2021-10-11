func solution(_ n:Int64) -> Int64 {
    var arr = Array(String(n))
    arr = arr.sorted(by: >)

    var ret = ""
    arr.forEach{
        ret += String($0)
    }
    return Int64(ret)!
}
