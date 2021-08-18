import Foundation

func solution(_ new_id:String) -> String {
    var id:String = new_id

    //1단계
    id = id.lowercased()

    //2단계
    var tmp_id:String = ""
    for i in id{
        if i.isLowercase || i.isNumber || i == "-" || i == "_" || i == "."{
            tmp_id.append(i)
        }
    }

    //3단계
    while tmp_id.contains(".."){
        tmp_id = tmp_id.replacingOccurrences(of: "..", with: ".")
    }

    //4단계
    if tmp_id.hasPrefix("."){
        tmp_id.removeFirst()
    }
    if tmp_id.hasSuffix("."){
        tmp_id.removeLast()
    }

    //5단계
    if tmp_id == ""{
        tmp_id.append("a")
    }

    //6단계
    if tmp_id.count >= 16{
        let last = tmp_id.index(tmp_id.startIndex, offsetBy: 15)
        tmp_id = String(tmp_id[tmp_id.startIndex..<last])
        if tmp_id.hasSuffix("."){
            tmp_id.removeLast()
        }
    }

    //7단계
    if tmp_id.count <= 2 {
        while tmp_id.count != 3 {
            tmp_id = tmp_id + String(tmp_id.last!)
        }
    }
    return tmp_id
}
