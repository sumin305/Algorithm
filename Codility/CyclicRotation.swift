import Foundation


public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    var array = A
    if array == []{
        return ([])
    }
    if K == 0 {
        return (array)
    }
    for i in 1...K{
        array.insert(array.popLast()!, at:0)
    }
    return (array)
}
