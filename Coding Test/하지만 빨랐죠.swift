
import Foundation
func GetLCM(A : Int,B :Int) -> (Int){
    if B == 0 {
        return A
    }
    let r = A % B
    return GetLCM(A:B, B:r)
}
for i in 1...Int(readLine()!)!{
    let n = readLine()!.split(separator: " ").map{
        Int(String($0))!
    }
    let (a,b) = (n[0], n[1])
    if GetLCM(A : max(a,b), B : min(a,b)) == 1 {
        print("Perfect")
    }else{
        print("Not even close")
    }
  
}
