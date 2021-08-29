import Foundation

func solution(_ s:String) -> Int {

    var retArr = [Int]()
    var cutWordCnt = 0

    while cutWordCnt <= s.count / 2{
        var wordCnt = 1
        var index = 0
        var ansWord = ""
        var pre = ""
        cutWordCnt += 1

        while index <= s.count{
            let remainder = s.suffix(s.count - index)
            let prefixWord = remainder.prefix(cutWordCnt)
            if pre ==  prefixWord{
                wordCnt += 1
                index += cutWordCnt
                continue
            }
            if wordCnt > 1{
                ansWord += "\(wordCnt)\(pre)"

            }else{
                ansWord += pre
            }
            pre = String(prefixWord)
            wordCnt = 1
            index += cutWordCnt
        }
        ansWord += s.suffix(s.count - (index - cutWordCnt))
        retArr.append(ansWord.count)
    }
    return retArr.min()!
}
