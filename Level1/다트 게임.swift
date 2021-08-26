
var ret:[Int] = []

func checkString(_ word:String,_ cnt:Int){

    if word == "S"{
        ret[cnt] = ret[cnt]
    }else if word == "D"{
        ret[cnt] *= ret[cnt]
    }else if word == "T"{
        ret[cnt] *= (ret[cnt] * ret[cnt])
    }else if word == "*"{
        if cnt == 0{
            ret[cnt] *= 2
        }else{
            ret[cnt] *= 2
            ret[cnt-1] *= 2
        }
    }else if word == "#"{
        ret[cnt] *= -1
    }
}

func solution(_ dartResult:String) -> Int {
    var cnt:Int = 0
    var tmp:String = ""
    for i in dartResult.indices{
        if dartResult[i].isNumber{
            tmp += String(dartResult[i])
        }
        else{
            if tmp != ""{
                ret.append(Int(tmp)!)
                cnt += 1
            }
            checkString(String(dartResult[i]), cnt - 1)
            tmp.removeAll()
        }
    }
    return ret.reduce(0,+)
}
