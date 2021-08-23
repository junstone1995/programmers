import Foundation

func solution(_ table:[String], _ languages:[String], _ preference:[Int]) -> String {
    var langDic:Dictionary<String,Int> = [ : ]
    var answer:Int = 0
    var name:String = ""
    for i in 0..<languages.count{
        langDic["\(languages[i])"] = preference[i]
    }
    for i in table{
        let arr = i.components(separatedBy: " ")

        var sum = 0
        for j in 1..<arr.count{
            if langDic["\(arr[j])"] != nil{
               sum += langDic["\(arr[j])"]! * (6 - j)
            }
        }
        if sum > answer{
            name = arr[0]
            answer = sum
        }else if sum == answer {
            if name > arr[0] {
                name = arr[0]
                answer = sum
            }
        }
    }
    return name
}
