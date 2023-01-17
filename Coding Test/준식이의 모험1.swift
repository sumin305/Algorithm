//준식이의 모험
import Foundation
for _ in 1...Int(readLine()!)! {
    let n = readLine()!.split(separator:" ").map{Int(String($0))!}
    let (N, M) = (n[0], n[1])
    var array : [[Character]] = Array(repeating: Array(repeating: " ", count: M+2), count: N+2)
    var junsik = (0,0)
    for i in 1...N{
        let S = Array(readLine()!)
        array[i][1...N] = ArraySlice(S[S.startIndex...S.index(before: S.endIndex)])
        if S.contains("@"){
            //준식이("@")의 위치 좌표
            junsik = (i,  S.index(of:"@")!+1)
        }
    }
    var (jc,jr) = (junsik)
    array[jc][jr] = "."
    let K = Int(readLine()!)!
    let T = Array(readLine()!)

    for i in 0...K-1{
        switch (T[i]) {
            case "L" :
                if array[jc][jr-1] == "."{
                    jr -= 1
                }
            case "R" :
                if array[jc][jr+1] == "."{
                    jr += 1
                }
            case "U" :
                if array[jc-1][jr] == "."{
                    jc -= 1
                }
            case "D" :
                if array[jc+1][jr] == "."{
                    jc += 1
                }
            default :
                continue
        }

    }
    print(jc,jr)
}
