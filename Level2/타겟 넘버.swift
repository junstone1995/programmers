import Foundation

var cnt = 0
var targetcopy = 0

func DFS(_ numbers:[Int],_ index:Int,_ sum:Int){

    if index == numbers.count{
        if targetcopy == sum{
            cnt += 1
        }
        return
    }
    DFS(numbers, index + 1, sum + numbers[index])
    DFS(numbers, index + 1, sum - numbers[index])
}

func solution(_ numbers:[Int], _ target:Int) -> Int {

    targetcopy = target
    DFS(numbers, 0, 0)
    return cnt
}
