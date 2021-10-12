import Foundation

func solution(_ n:Int64) -> Int64 {

    var number = sqrt(Double(n))

    if number == Double(Int64(number)){
        return Int64((number + 1) * (number + 1))
    }else{
        return -1
    }
}
