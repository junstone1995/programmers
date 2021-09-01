import Foundation

func solution(_ word:String) -> Int {
    var arr:[String] = []
    let wordSet:[String] = ["0","1","2","3","4","5"]
    var ret = 0
    var word = word

    word = word.replacingOccurrences(of: "A", with: "1")
    word = word.replacingOccurrences(of: "E", with: "2")
    word = word.replacingOccurrences(of: "I", with: "3")
    word = word.replacingOccurrences(of: "O", with: "4")
    word = word.replacingOccurrences(of: "U", with: "5")
    word = "0." + word

    //첫번째
    for i in 1...5{
        //두번쨰
        for j in 1...5{
            //세번째
            for k in 1...5{
                //네번째
                for l in 1...5{
                    //다섯번째
                    for m in 1...5{
                        arr.append("0."+wordSet[i]+wordSet[j]+wordSet[k]+wordSet[l]+wordSet[m])
                    }
                    arr.append("0."+wordSet[i]+wordSet[j]+wordSet[k]+wordSet[l])
                }
                arr.append("0."+wordSet[i]+wordSet[j]+wordSet[k])
            }
            arr.append("0."+wordSet[i]+wordSet[j])
        }
        arr.append("0."+wordSet[i])
    }
    let sorted = arr.sorted{ (first, second) -> Bool in
        if first.count > second.count{
            first > second
        }
        return first < second
    }

    for i in 0..<sorted.count{
        if word == sorted[i]{
//            print(word)
//            print(sorted[i])
//            print(i)
            ret = i + 1
            break
        }
    }
    return ret
}

solution("AAAAE")
