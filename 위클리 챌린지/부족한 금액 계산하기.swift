import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    var arr:[Int64] = []
    var tmp:Int64 = 0

    for num in 1...count{
       tmp = tmp + Int64(price * num)
    }
    if tmp < money{
        answer = 0
    }else{
        answer = tmp - Int64(money)
    }
    return answer
}
