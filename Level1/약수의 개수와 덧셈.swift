import Foundation

func countPrime(_ num:Int) -> Int{
    var cnt:Int = 0
    for i in 1...num{
        if num % i == 0{
            cnt += 1
        }
    }
    return cnt
}

func solution(_ left:Int, _ right:Int) -> Int {

    var answer:Int = 0

    for i in left...right{
        let cnt = countPrime(i)
        if cnt % 2 == 0{
            answer += i
        }else{
            answer -= i
        }
    }
    return answer
}
