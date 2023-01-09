import Foundation

for _ in 1...Int(readLine()!)!{
    let n = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (a,b) = (n[0], n[1])
    let S = readLine()!
    var Junsik = readLine()!.split(separator: " ").map{Int(String($0))!}
    var (ATK_J, HP_J) = (Junsik[0], Junsik[1])
    var Monster = readLine()!.split(separator: " ").map{Int(String($0))!}
    var (ATK_M, HP_M) = (Monster[0], Monster[1])
    var array : [Character] = [Character]()
    var isBool : Bool = false
    
    for i in 0...a-1{
        var char = S[S.index(S.startIndex, offsetBy: i)]
        if char != "." {
            array.append(char)
        }
    }
    var J = array.firstIndex(of: "@")!
    for i in (J-(b+1))...(J+(b+1)){
        if i<0 || i>array.count{
            continue
        }
        var target = array[array.index(array.startIndex, offsetBy : i)]
        if target == "&"{
            while true{
                HP_M = HP_M - ATK_J
                HP_J = HP_J - ATK_M
                if HP_M > 0 && HP_J > 0
                {
                    if HP_M <= 0
                }
            }
        }
        if target == "O"{
            isBool = true
        }
    }
    if isBool == true{
        print("HAHA!")
    }else{
        print("HELP!")
    }
    
}
