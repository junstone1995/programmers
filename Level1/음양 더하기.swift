import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {

    var answer:Int = 0
    for i in 0..<signs.count{
        if signs[i] == true{
            answer += absolutes[i]
        }else{
            answer -= absolutes[i]
        }
    }
    return answer
}
