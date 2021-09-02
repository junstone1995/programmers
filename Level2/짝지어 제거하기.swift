import Foundation

func solution(_ s:String) -> Int{
    var arr = Array(s)
    var stk = [Character]()

    for i in arr.indices{
        if stk.isEmpty{
           stk.append(arr[i])
        }else{
            if arr[i] == stk.last!{
                stk.removeLast()
            }else{
                stk.append(arr[i])
            }
        }
    }
    return stk.isEmpty ? 1 : 0
}
