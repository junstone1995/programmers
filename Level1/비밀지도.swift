import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {

    var compNum:[Int] = []
    var ret:[String] = []
    for i in 0..<n{
        compNum.append(arr1[i] | arr2[i])
    }

    for i in compNum{
        var password:String = ""
        password = String(i,radix: 2)
        while password.count < n{
            password = "0" + password
        }
        password = password.replacingOccurrences(of: "1", with: "#")
        password = password.replacingOccurrences(of: "0", with: " ")
        ret.append(password)
    }
    return ret
}
