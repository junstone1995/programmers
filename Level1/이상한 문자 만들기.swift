import Foundation

func solution(_ s:String) -> String {
    var ret = ""
    let arr = s.components(separatedBy:" ")
    arr.forEach{
        var str = Array($0)
           for i in 0..<str.count{
               if i % 2 == 0{
                   ret += String(str[i].uppercased())
               }else{
                   ret += String(str[i].lowercased())
               }
           }
        ret += " "
    }
    ret.removeLast()
    return ret
}
