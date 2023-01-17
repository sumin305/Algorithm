import Foundation

for _ in 1...Int(readLine()!)! {
    let n = readLine()!.split(separator : " ").map{Int(String($0))!}
    let (N,M) = (n[0],n[1])
    var array : [[Character]] = Array(repeating : Array(repeating : " ", count : M+2), count : (N+2))
    var (jc,jr) = (0,0)
    var damage = 0
    for i in 1...N {
        let input = Array(readLine()!)
        array[i][1...M] = ArraySlice(input)
        if input.contains("@"){
            (jc,jr) = (i,input.index(of : "@")!+1)
        }
    }
    array[jc][jr] = "."
    let K = Int(readLine()!)!
    let T = Array(readLine()!)

    for i in 0...K-1{
        switch (T[i]) {
            case "L" :
                if array[jc][jr-1] != " " && array[jc][jr-1] != "#"{
                    jr -= 1
                }
            case "R" :
                if array[jc][jr+1] != " " && array[jc][jr+1] != "#"{
                    jr += 1
                }
            case "U" :
                if array[jc-1][jr] != " " && array[jc-1][jr] != "#"{
                    jc -= 1
                }
            case "D" :
                if array[jc+1][jr] != " " && array[jc+1][jr] != "#"{
                    jc += 1
                }
            default:
                break
        }
        if array[jc][jr] == "^"
        {
            damage += 1
        }
    }
    print(jc,jr,damage)
    
}
