import Foundation

for _ in 1...Int(readLine()!)! {
    let line = readLine()!.split(separator : " ").map{Int(String($0))!}
    let (N,M,K) = (line[0], line[1], line[2])
    let lst = readLine()!.split(separator : " ").map{Int(String($0))!}
    if K==N {
        print("JB")
        continue
    }
    for i in K-1...N-1 {
        if lst[K-1]+M <= lst[i] {
            print(i+1)
            break
        }
        if i == N-1 {
            print("JB")
            break
        }
        
    }
}
