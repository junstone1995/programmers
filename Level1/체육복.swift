import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {

    var students = [Int](repeating: 1, count: n)

    for i in lost{
        students[i-1] = 0
    }
    for i in reserve{
        students[i-1] += 1
    }
    var cnt = 0
    for i in 0..<n{
        if students[i] == 0{
            if i>0 && students[i-1] > 1{
                students[i] = 1
                students[i-1] = 1
            }else if i < n-1 && students[i+1] > 1{
                students[i] = 1
                students[i+1] = 1
            }else{
                cnt += 1
            }
        }
    }
    return n - cnt
}
