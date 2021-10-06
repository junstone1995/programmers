func solution(_ n:Int) -> Int {
    var arr:[Int] = Array(repeating: 0, count: n + 1)
    var ret:[Int] = []
    for i in 2...n{
        arr[i] = i
    }

    for j in 2...n{
        if arr[j] == 0 { continue }
        for k in stride(from: j + j, through: n, by: j){
            arr[k] = 0
        }
    }
    for w in 2...n{
        if arr[w] != 0{
            ret.append(arr[w])
        }
    }
    return ret.count
}
