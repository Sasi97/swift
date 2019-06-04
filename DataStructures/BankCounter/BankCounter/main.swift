//
//  main.swift
//  BankCounter
//
//  Created by BridgeLabz Solutions LLP  on 5/2/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
import Swift

struct Queue<T>
{
    
    var que:[String]=[]
    var capacity=0
    
    mutating func enqueue(element: String)
    {
        que.append(element)
    }
    
    mutating func dequeue() -> String!
    {
        
        if que.isEmpty
        {
            return nil
        }
        else
        {
            let firstElement = que.first
            que.remove(at: 0)
            return firstElement
        }
    }
    func printQ()
    {
        for person in que
        {
            print(person)
        }
    }
    
}
var people=Int(readLine()!)!
var q = Queue<Any>()
var cash=10000
for _ in 0..<people
{
    let name=readLine()
    q.enqueue(element: name!)
}
q.printQ()
print("Dequeue element is:\(q.dequeue()!) \n" )
q.printQ()





