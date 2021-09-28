import Foundation

func solution(_ sizes:[[Int]]) -> Int {

    var sizes = sizes
    var garoMax = 0
    var seroMax = 0

    for i in 0..<sizes.count{
        if sizes[i][0] < sizes[i][1]{
            let tmp = sizes[i][0]
            sizes[i][0] = sizes[i][1]
            sizes[i][1] = tmp
        }
    }
    for i in 0..<sizes.count{
        if garoMax < sizes[i][0]{
            garoMax = sizes[i][0]
        }
        if seroMax < sizes[i][1]{
            seroMax = sizes[i][1]
        }
    }

    return garoMax * seroMax
}
