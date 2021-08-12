import Foundation

func handDistance(_ cur:[Int], _ target:[Int]) -> Int{
    return abs(target[0] - cur[0]) + abs(target[1] - cur[1])
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer:String = ""

    var leftHand:[Int] = [4,1]
    var rightHand:[Int] = [4,3]

    for var number in numbers{
        if number == 0{
            number = 11
        }
        switch number {
        case 1, 4, 7:
            answer += "L"
            leftHand = [(number / 3) + 1, 1]
        case 3, 6, 9:
            answer += "R"
            rightHand = [(number / 3), 3]
        default:
            let row:Int = (number / 3) + 1
            let numPos = [row , 2]
            let leftHandDist:Int = handDistance(leftHand, numPos)
            let rightHandDist:Int = handDistance(rightHand, numPos)

            if leftHandDist < rightHandDist{
                answer += "L"
                leftHand = numPos
            }else if leftHandDist > rightHandDist{
                answer += "R"
                rightHand = numPos
            }else{
                if hand == "left"{
                    answer += "L"
                    leftHand = numPos
                }else{
                    answer += "R"
                    rightHand = numPos
                }
            }
        }
    }
    return answer
}
