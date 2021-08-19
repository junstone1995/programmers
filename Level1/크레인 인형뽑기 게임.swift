import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board = board
    var answer:Int = 0
    var arr:[Int] = []

    for i in moves{
        for j in 0..<board.count{
            let target:Int = board[j][i-1]
            if target != 0{
                board[j][i-1] = 0
                if target == arr.last{
                    arr.removeLast()
                    answer += 1
                }else{
                    arr.append(target)
                }
                break
            }
        }
    }
    return answer * 2
}
