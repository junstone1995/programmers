import Foundation

func match(_ arr:[[Int]], _ key:[[Int]], _ rot:Int, _ r:Int, _ c:Int) -> [[Int]]{
    let n = key.count
    var arr = arr

    for i in 0..<n{
        for j in 0..<n{
            if rot == 0{
                arr[r + i][c + j] += key[i][j]
            } else if rot == 1{
                arr[r + i][c + j] += key[j][n - 1 - i]
            } else if rot == 2{
                arr[r + i][c + j] += key[n - 1 - i][n - 1 - j]
            } else if rot == 3{
                arr[r + i][c + j] += key[n - 1 - j][i]
            }

        }
    }
    return arr
}

func check(_ arr:[[Int]], _ offset:Int, _ n:Int) -> Bool{
    for i in 0..<n{
        for j in 0..<n{
            if (arr[offset + i][offset + j] != 1){
                return false
            }
        }
    }
    return true
}

func solution(_ key:[[Int]], _ lock:[[Int]]) -> Bool {
    var offset = key.count - 1;

    for r in 0..<offset + lock.count{
        for c in 0..<offset + lock.count{
            for rot in 0..<4{
                var arr:[[Int]] = Array(repeating: Array(repeating: 0, count: 58), count: 58)
                for i in 0..<lock.count{
                    for j in 0..<lock.count{
                        arr[offset+i][offset+j] = lock[i][j]
                    }
                }

                arr = match(arr, key, rot, r, c)
                if check(arr, offset, lock.count){
                    return true
                }
            }
        }
    }
    return false
}
