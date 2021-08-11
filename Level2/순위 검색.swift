import Foundation


func solution(_ info:[String], _ query:[String]) -> [Int] {

    var ret:[Int] = []
    var db:Dictionary<String, [Int]> = [ : ]

    for i in info{
        let arr = i.components(separatedBy: " ")
        let languages = [arr[0],"-"]
        let jobs = [arr[1],"-"]
        let careers = [arr[2],"-"]
        let soulFoods = [arr[3],"-"]
        let score = Int(arr[4])!

        for language in languages{
            for job in jobs{
                for career in careers{
                    for soulFood in soulFoods{
                        let key = "\(language)\(job)\(career)\(soulFood)"
                        if db[key] == nil{
                            db[key] = [score]
                        }else{
                            db[key]?.append(score)
                        }

                    }
                }
            }
        }
    }
        for i in db{
            let sortValue = i.value.sorted()
            db[i.key] = sortValue
        }
    query.forEach{
        let arr = $0.components(separatedBy: " ")
        let key = "\(arr[0])\(arr[2])\(arr[4])\(arr[6])"
        let score = Int(arr[7])!

        if let matchScore = db[key]{
            var start:Int = 0
            var end = matchScore.count
            while start < end {
                let mid = (start + end) / 2

                if matchScore[mid] >= score{
                    end = mid
                }else{
                    start = mid + 1
                }
            }
            ret.append(matchScore.count - start)
        }else{
            ret.append(0)
        }
    }
    return ret
}
