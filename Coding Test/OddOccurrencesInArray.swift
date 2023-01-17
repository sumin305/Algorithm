import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var lst = A.sorted()
    var count = 0
    if lst.count == 1{
        return (A[0])
    }
    for i in 0...lst.count-2{
        count += 1
        if lst[i] != lst[i+1]
        {
            if count % 2 != 0
            {
                return lst[i]
            }
            count = 0
        }
    }
    return lst[lst.count-1]

}

