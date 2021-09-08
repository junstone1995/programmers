import Foundation

func solution(_ p:String) -> String {

    func changeDirect(_ u: String) -> String{
        return u.map{$0 == "(" ? ")" : "("}.joined()
    }

    func againFromFirst(_ w: String) -> String{
        var checkPair = ["(":0, ")":0]
        var checkStack = [String]()
        var u = ""
        var v = ""

        for i in 0..<w.count{
            let s = String(Array(w)[i])

            if s == "("{
                checkPair["("]! += 1
                checkStack.append(s)
            }else{
                if let last = checkStack.last , last == "("{
                    checkStack.removeLast()
                }else{
                    checkStack.append(s)
                }
                checkPair[")"]! += 1
            }

            if checkPair["("] != 0, checkPair["("] == checkPair[")"]{
                u = Array(w)[0...i].map{String($0)}.joined()
                if i+1 <= w.count{
                    v = Array(w)[i+1..<w.count].map{String($0)}.joined()
                }

                if checkStack.isEmpty{
                    return u + againFromFirst(v)
                }else{
                    u.removeFirst()
                    u.removeLast()

                    return "(" + againFromFirst(v) + ")" + changeDirect(u)
                }
            }
        }
        return ""
    }

    return againFromFirst(p)
}
