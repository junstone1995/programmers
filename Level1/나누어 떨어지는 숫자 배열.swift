func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var arr = arr.filter{$0 % divisor == 0}
    arr = arr.sorted()
    if arr == [] {
        arr.append(-1)
    }
    return arr
}
