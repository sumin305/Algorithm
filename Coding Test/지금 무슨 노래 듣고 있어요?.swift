import Foundation

let N = Int(readLine()!)!
var A : [String] = [String]()
var B : [Int] = [Int]()
for i in 1...N{
    A.append(readLine()!)
}

for i in 1...N{
    B.append(Int(readLine()!)!)
}
var dp : [Int] = [Int](repeating : B[0], count : N)

    for i in 0...N-1{
        if i == 0 {
            continue
        }
        dp[i] = dp[i-1]+B[i]
    }
    let M = Int(readLine()!)!
    for i in 1...M {
        let target = Int(readLine()!)!
        var j = 0
        if N == 1 {
            print(A[0])
            continue
        }
        else
        {
            while j < dp.count {
            if target > dp[j] {
                j += 1
                continue
            }
            print(A[j])
            break
             }
        }
}
