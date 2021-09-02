import Foundation

var map:[[Int]] = Array(repeating: Array(repeating: 0, count: 100), count: 100)

func rotation(_ query:[Int]) -> Int{
    var minNum = 10001
    var save:Int = 0
    let sero1 = query[0] - 1 //2 1
    let garo1 = query[1] - 1 //2 1
    let sero2 = query[2] - 1 //5 4
    let garo2 = query[3] - 1 //4 3

    //상단 사각형 변
    save = map[sero1][garo1]
    map[sero1][garo1] = map[sero1+1][garo1]
    minNum = min(save, minNum)
    for i in garo1+1...garo2{
        let num = map[sero1][i]
        map[sero1][i] = save
        save = num
        minNum = min(save, minNum)
    }
    // 오른쪽 사각형 변
    for i in sero1+1..<sero2{
        let num = map[i][garo2]
        map[i][garo2] = save
        save = num
        minNum = min(save, minNum)
    }
    //하단 사각형 변
    for i in (garo1...garo2).reversed(){
        let num = map[sero2][i]
        map[sero2][i] = save
        save = num
        minNum = min(save, minNum)
    }
    //왼쪽 사각형 변
    for i in (sero1...sero2-1).reversed(){
        let num = map[i][garo1]
        map[i][garo1] = save
        save = num
        minNum = min(save, minNum)
    }
    return minNum
}

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var ret = [Int]()
    var cnt = 1
    for i in 0..<rows{
        for j in 0..<columns{
            map[i][j] = cnt
            cnt += 1
        }
    }

    for i in queries{
        ret.append(rotation(i))
    }
    return ret
}
