//
//  main.swift
//  OrderedList
//
//  Created by BridgeLabz Solutions LLP  on 5/6/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//


import Foundation
import Swift

public class Node
{
    var value: Int?
    var next: Node?
    
    init(value:Int)
    {
        self.value = value
    }
}
class OrderdList
{
    var head:Node?
    var isEmpty:Bool
    {
        return head==nil
    }
    func searchNode(item:Int)-> (i:Int,flag:Bool)
    {
        var current = head
        var i  = 1
        var flag=false
        if head == nil
        {
            print("List is empty")
        }
        else
        {
            while current != nil
            {
                if current?.value == item
                {
                    flag = true
                    break
                }
                i+=1
                current = current?.next
            }
        }
        return (i,flag)
        
    }
    
    func deleteNode(at position: Int)
    {
        if head == nil
        {
            return
        }
        var temp = head
        
        if (position == 0)
        {
            head = temp?.next
            return
        }
        
        for _ in 0..<position-1 where temp != nil
        {
            temp = temp?.next
        }
        
        if temp == nil || temp?.next == nil
        {
            return
        }
        
        let nextToNextNode = temp?.next?.next
        
        temp?.next = nextToNextNode
    }
    func printList()
    {
        var current: Node? = head
        while (current != nil)
        {
            print("\((current?.value)!)")
            current = current?.next
        }
    }
    func insert(value:Int)
    {
        let newNode = Node(value: value)
        if (head == nil || (head?.value)! > (newNode.value)!)
        {
            newNode.next = head
            head = newNode
        }
        else
        {
            var current = head
            while (current!.next != nil && current!.value! < (newNode.value)!)
            {
                current = current!.next
                newNode.next = current!.next
                current!.next = newNode
            }
        }
    }
}
/*func readFile(path: String) -> Array<String> {
 
 do
 {
 let contents:NSString = try NSString(contentsOfFile: path, encoding: String.Encoding.utf8.rawValue)
 let trimmed:String = contents.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
 let lines:Array<String> =  NSString(string: trimmed).components(separatedBy: "\n")
 return lines
 }
 catch
 {
 print("Unable to read file: \(path)");
 return [String]()
 }
 }
 
 let s = readFile(path:"/Users⁩/bridgelabz⁩/⁨Downloads⁩/⁨Desktop⁩/my.txt")*/

let list = OrderdList()
var s:[Int]=[]
let count=Int(readLine()!)!
for _ in 0..<count
{
    s.append(Int(readLine()!)!)
}
for i in 0..<s.count
{
    list.insert(value: s[i] )
}
list.printList()
print("Enter Num to Search:")
var s1=Int(readLine()!)!
var t=list.searchNode(item: s1)
if (t.flag == true)
{
    list.deleteNode(at: t.i-1)
    list.printList()
}
else
{
    list.insert(value: s1)
    list.printList()
}


