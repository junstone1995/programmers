func solution(_ arr:[Int]) -> [Int] {

    let minValue = arr.min()!
    let ret = arr.filter { $0 != minValue}
    return ret.isEmpty ? [-1] : ret
}
