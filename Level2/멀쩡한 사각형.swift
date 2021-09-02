import Foundation

func gcd(_ a:Int,_ b:Int) -> Int{
    if b == 0{
        return a
    }
    else{
        return gcd(b, a % b)
    }
}

func solution(_ w:Int, _ h:Int) -> Int64{
    return Int64((w * h ) - (w + h - gcd(w,h)))
}
