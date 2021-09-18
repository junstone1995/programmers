func solution(_ s:String) -> Bool {
    var s = Array(s)
    if !(s.count == 4 || s.count == 6){
        return false
    }
    for i in 0..<s.count{
        if !s[i].isNumber{
            return false
        }
    }
    return true
}
