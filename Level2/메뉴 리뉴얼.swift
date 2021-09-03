import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {

    var menu:Dictionary<String,Int> = [:]
    var ret:[String] = []

    func comb(_ origin:[Character],_ n:Int,_ retString:String){
        if retString.count > 1 && course.contains(retString.count){
            if menu.keys.contains(retString){
                menu[retString]! += 1
            }else{
                menu[retString] = 1
            }
        }
        for i in n+1..<origin.count{
            comb(origin, i, "\(retString)\(origin[i])")
        }
    }

    for order in orders{
        let menus:[Character] = order.map{$0}.sorted()
        for i in menus.indices{
            comb(menus,i,"\(menus[i])")
        }
    }

    for n in course{
        let max = menu.filter{$0.key.count == n && $0.value > 1}.max{$0.value < $1.value}

        if let max = max{
            menu.filter{$0.key.count == n}.forEach{
                if $0.value == max.value{
                    ret.append($0.key)
                }
            }
        }
    }
    print(ret)
    return ret.sorted()
}
