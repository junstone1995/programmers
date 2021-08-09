import Foundation

func switchCheck(_ sum : Double) -> String{
    var ret = ""
    switch sum{
    case ..<50 :
        ret = "F"
    case 50..<70 :
        ret = "D"
    case 70..<80 :
        ret = "C"
    case 80..<90 :
        ret = "B"
    case 90... :
        ret = "A"
    default:
        ret = ""
    }
    return ret
}

func solution(_ scores:[[Int]]) -> String {
    var ret:String = ""

    for i in 0..<scores.count{
        var student:Array<Int> = []
        for j in 0..<scores[i].count{
            student.append(scores[j][i])
        }
        let max = student.max()!
        let min = student.min()!
        if student[i] == max || student[i] == min{
            var cnt = 0
            for j in 0..<student.count{
                if student[i] == student[j]{
                    cnt += 1
                }
            }
            if cnt == 1{
                student.remove(at: i)
            }
        }
        let total = student.reduce(0,+)
        let sum:Double = Double(total) / Double(student.count)
        ret += switchCheck(sum)
        }
    return ret
}
