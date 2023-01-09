import Foundation
let T = Int(readLine()!)!
for _ in 1...T {
    let n = readLine()!.split(separator: " ").map{Int(String($0))!}
    let (a, b) = (n[0], n[1])
    let text = readLine()!
    var array : [Character] = [Character]()
    var count = 0
    for i in 0...a-1{
        if text[text.index(text.startIndex,offsetBy: i)]=="@" || text[text.index(text.startIndex,offsetBy: i)]=="O" {
            array.append(contentsOf: text[text.index(text.startIndex,offsetBy: i)...(text.index(before: text.endIndex))])
            break
        }
    }
    for j in 1...array.count{
        if array[array.index(array.startIndex,offsetBy: j)] == "@" || array[array.index(array.startIndex, offsetBy: j)] == "O"{
            break
        }else if array[array.index(array.startIndex,offsetBy: j)]=="#"{
            count += 1
        }
    }
    if count <= b{
        print("HAHA!")
    }else{
        print("HELP!")
    }
}
