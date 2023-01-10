import Foundation
class Queue<T: Equatable> {
    var enqueue: [T]
    var dequeue: [T] = []
    var count: Int {
        return enqueue.count + dequeue.count
    }
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }
    var first: T? {
        if dequeue.isEmpty {
            return enqueue.first
        } else {
            return dequeue.last
        }
    }
    var last: T? {
        if enqueue.isEmpty {
            return dequeue.first
        } else {
            return enqueue.last
        }
    }
    init(_ queue: [T]) {
        enqueue = queue
    }
    func push(_ n: T) {
        enqueue.append(n)
    }
    func pop() -> T? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
    func removeAll() {
        enqueue.removeAll()
        dequeue.removeAll()
    }
    func contains(_ n: T) -> Bool {
        return enqueue.contains(n) || dequeue.contains(n)
    }
}
for _ in 1...Int(readLine()!)!{
    let N = Int(readLine()!)!
    let S = readLine()!
    let n = readLine()!.split(separator : " ").map{Int(String($0))!}
    let (a,b) = (n[0],n[1])
    let queue = Queue<Character>([])
    for i in a-1...b-1{
        queue.push(S[S.index(S.startIndex, offsetBy : i)])
    }
    if queue.pop() != "U"{
        print("NO")
        continue
    }
    if queue.pop() != "m"{
        print("NO")
        continue
    }
    while true{
        let target = queue.pop()
        if target != "m"{
            print("NO")
            break
        }
        if queue.isEmpty{
            print("YES")
            break
        }
    }
}
