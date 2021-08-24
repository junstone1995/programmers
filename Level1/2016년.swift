func solution(_ a:Int, _ b:Int) -> String {
    let mon:[Int] = [0,31,29,31,30,31,30,31,31,30,31,30,31]
    let day:[String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    var num:Int = 0

    for i in 0..<a{
        num += mon[i]
    }
    num += b
    return day[num%7]
}
