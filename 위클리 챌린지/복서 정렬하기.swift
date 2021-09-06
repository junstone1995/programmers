import Foundation

struct Boxer{
    let myNum:Int
    var rate:Double
    let winHeavyCnt:Int
    let weight:Int

    init(weight:Int, winHeavyCnt:Int, number:Int, rate:Double) {
        self.weight = weight
        self.winHeavyCnt = winHeavyCnt
        self.myNum = number
        self.rate = rate
    }


}

func solution(_ weights:[Int], _ head2head:[String]) -> [Int] {

    var boxer:[Boxer] = []

    for i in 0..<weights.count{
        let headStr = Array(head2head[i])
        var winHeavyCnt = 0
        var winCnt = 0
        var loseCnt = 0
        var rate:Double = 0.0
        for j in 0..<headStr.count{
            if headStr[j] == "W"{
                winCnt += 1
                if weights[i] < weights[j]{
                    winHeavyCnt += 1
                }
            }else if headStr[j] == "L"{
                loseCnt += 1
            }
        }

        rate = Double(winCnt)/Double(winCnt+loseCnt)
        if winCnt == 0 && loseCnt == 0{
            rate = 0
        }
        let person = Boxer.init(weight: weights[i], winHeavyCnt: winHeavyCnt, number: i+1, rate: rate)
        boxer.append(person)
    }
    boxer = boxer.sorted{ (first, second) -> Bool in
        if first.rate > second.rate{
            return true
        }else if first.rate == second.rate{
            if first.winHeavyCnt > second.winHeavyCnt{
                return true
            }else if first.winHeavyCnt == second.winHeavyCnt{
                if first.weight > second.weight{
                    return true
                }else if first.weight == second.weight{
                    if first.myNum < second.myNum{
                        return true
                    }
                }
            }
        }
        return false
    }
    return boxer.map{ $0.myNum}
}
