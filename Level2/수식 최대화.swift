import Foundation

func solution(_ expression:String) -> Int64 {

    var str = ""
    let expression = Array(expression)
    var num:[Int] = []
    var ex:[String] = []
    var answer:[Int] = []
    for i in 0..<expression.count{
        if expression[i].isNumber{
            str += String(expression[i])
        }else{
            num.append(Int(str)!)
            ex.append(String(expression[i]))
            str = ""
        }
    }
    num.append(Int(str)!)

    let operation = [["+","-","*"],
                    ["+","*","-"],
                    ["-","+","*"],
                    ["-","*","+"],
                    ["*","+","-"],
                    ["*","-","+"]]

    for i in operation{
        answer.append(abs(operand(i, num, ex)))
    }
    return Int64(answer.max()!)
}

func operand(_ operation:[String],_ num:[Int],_ ex:[String]) -> Int{

    //숫자
    var num = num
    //연산
    var exe = ex
    for i in operation{
        while exe.contains(i){
            if let index = exe.firstIndex(of: i){
                switch i {
                case "+":
                    num[index] += num[index+1]
                case "-":
                    num[index] -= num[index+1]
                case "*":
                    num[index] *= num[index+1]
                default:
                    break
                }
                num.remove(at: index+1)
                exe.remove(at: index)
            }
        }
    }
    return num[0]
}
