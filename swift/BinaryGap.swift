import Foundation

public func solution(_ N : Int) -> Int {
    var target = N
    var array = [Int]()
    var max = 0
    var count = 0
    //정수 이진수로 변환하기
    while target / 2 >= 1 {
        array.insert(target % 2, at : 0)
        target = target/2
    }
    array.insert(1,at:0)
    for i in array{
        if i == 1 {
            if count >= max{
                max = count
            }
            count = 0
        }else{
            count += 1
        }
    }
    return max
}
