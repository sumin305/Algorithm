import Foundation
let T = Int(readLine()!)!

for _ in 1...T{
    let N = Int(readLine()!)!
    var array = readLine()!.split(separator: " ").map{
        Int(String($0))! }
    var i = 0
    while i<N-1{
        if array[i]>array[i+1]{
            array[i] = array[i]/2
            i=0
            continue
        }else{
            i += 1
        }
    }
    for j in 1...array.count{
        print(array[j-1],terminator : " ")
    }
    print()
    }
