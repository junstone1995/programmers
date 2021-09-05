import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {

    var failStage: [Int: Int] = [:]
    for stage in stages {
        if !failStage.isEmpty && failStage.keys.contains(stage) {
            failStage[stage]! += 1
            continue
            }
        failStage[stage] = 1
    }

    var result: [(stage: Int, value: Double)] = []
    var successPeople: Int = stages.count
    for stage in 1...N {
        if !failStage.keys.contains(stage) {
            result.append((stage, 0))
             continue
             }
        result.append((stage, Double(failStage[stage]!) / Double(successPeople)))

        successPeople -= failStage[stage]!
    }

    result.sort { return $0.value == $1.value ? $0.stage < $1.stage : $0.value > $1.value }
    return result.map { $0.stage }

}
