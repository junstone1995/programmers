func solution(_ strings:[String], _ n:Int) -> [String] {
    let index = strings[0].index(strings[0].startIndex ,offsetBy:n)

    let ret = strings.sorted(by : {(s1 : String, s2 : String)-> Bool in
                                if s1[index] == s2[index]{
                                    return s1 < s2
                                }else{
                                    return s1[index] < s2[index]
                                }})
    return ret
}
