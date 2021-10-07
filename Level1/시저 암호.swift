func solution(_ s:String, _ n:Int) -> String {
    let alpha = "abcdefghijklmnopqrstuvwxyz".map{ $0 }
    return String(s.map{
      guard let index = alpha.firstIndex(of : Character($0.lowercased())) else { return $0}
        let letter = alpha[(index+n) % alpha.count]
        return $0.isUppercase ? Character(letter.uppercased()) : letter
    })
}
