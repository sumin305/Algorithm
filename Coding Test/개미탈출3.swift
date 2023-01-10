//
//  개미 탈출3.swift
//  swiftpractice
//
//  Created by 이수민 on 2023/01/06.
//

import Foundation

let T = Int(readLine()!)!
for _ in 1...T{
    let n = readLine()!.split(separator: " ").map{Int(String($0))!    }
    let (a,b) = (n[0],n[1])
    var S = readLine()!
    var array : [Character] = [Character]()
    var isHAHA : Bool = false
    //.을 제외하고 모두 넣음
    for i in 0...a-1{
        var char = S[S.index(S.startIndex, offsetBy: i)]
        if  char != "." {
            array.append(char)
        }
    }
    //@찾고 b 범위내에 0이나 G 있으면 성공 아니면 실패
    var ant_index = array.firstIndex(of: "@")!
   
    for j in ant_index-(b+1)...ant_index+(b+1){
        if j < 0 || j >= array.count{
            continue
        }
        var target = array[array.index(array.startIndex, offsetBy: j)]
        
 
        if target == "G" || target == "O" {
            isHAHA = true
            break
        }
    }
    if isHAHA == true{
        print("HAHA!")
    }else{
        print("HELP!")
    }
    
}
