func solution(_ str1:String, _ str2:String) -> Int {
    var arr1:[String:Int] = [:]
    var arr2:[String:Int] = [:]
    var s1 = Array(str1)
    var s2 = Array(str2)

    for i in 0..<s1.count-1{
        if s1[i].isLetter && s1[i+1].isLetter{
            var str = String(s1[i])+String(s1[i+1])
            str = str.lowercased()
            if arr1["\(str)"] == nil{
                arr1["\(str)"] = 1
            }else{
                arr1["\(str)"]! += 1
            }
        }
    }
    for i in 0..<s2.count-1{
        if s2[i].isLetter && s2[i+1].isLetter{
            var str = String(s2[i])+String(s2[i+1])
            str = str.lowercased()
            if arr2["\(str)"] == nil{
                arr2["\(str)"] = 1
            }else{
                arr2["\(str)"]! += 1
            }
        }
    }

    var cnt1 = 0
    var cnt2 = 0
    for (key1,value1) in arr1{
        for (key2,value2) in arr2{
            if key1 == key2{
                if value1 == value2{
                    cnt1 += value1
                    cnt2 += value1
                    arr1[key1] = 0
                    arr2[key2] = 0
                }else if value1 < value2{
                    cnt1 += value1
                    cnt2 += value1
                    arr2[key1] = (value2 - value1)
                    arr1[key2] = 0
                }else{
                    cnt1 += value2
                    cnt2 += value2
                    arr1[key1] = (value1 - value2)
                    arr2[key2] = 0
                }
            }
        }
    }

    for (_, value) in arr1{
        if value != 0{
            cnt2 += value
        }
    }

    for (_, value) in arr2{
        if value != 0{
            cnt2 += value
        }
    }

    var ret:Double = 0.0
    ret = Double(cnt1)/Double(cnt2)
    if cnt1 == 0 && cnt2 == 0{
        ret = 1
    }


    return Int(ret * Double(65536))
}
