func solution(_ a:Int, _ b:Int) -> Int64 {
    var ret = 0

    for i in (a < b ? a...b : b...a){
        ret += i
    }
    return Int64(ret)
}
