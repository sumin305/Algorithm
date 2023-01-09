import Foundation
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])
let text = readLine()!
var walCounter = 0
var array : [Character] = [Character]()
var bool : Bool = false
print(text.count )
for i in 0...text.count-1{
    if text[text.index(text.startIndex,offsetBy: i)]=="@" || text[text.index(text.startIndex,offsetBy: i)]=="@"{
        array.append(contentsOf: text[text.index(text.startIndex,offsetBy: i)...text.endIndex])
        break
    }
    print(array)
}
    
