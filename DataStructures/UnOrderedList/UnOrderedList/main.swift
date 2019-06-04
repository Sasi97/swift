//
//  main.swift
//  UnOrderedList
//
//  Created by BridgeLabz Solutions LLP  on 5/2/19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import Foundation
import Swift

public class Node
{
    var value: String?
    var next: Node?
    
    init(value:String)
    {
        self.value = value
    }
}
class UnorderdList
{
    var head:Node?
    var isEmpty:Bool
    {
        return head==nil
    }
    func insert(value:String)
    {
        let newNode = Node(value: value)
        if var currNode = head
        {
            while currNode.next != nil
            {
                currNode = currNode.next!
            }
            currNode.next = newNode
                
        }
        else
        {
            head = newNode
        }

    }
   
    func searchNode(item:String)-> (i:Int,flag:Bool)
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
            print("\(current?.value ?? "")")
            current = current?.next
        }
        
    }
    func listItem()->String
    {
        return head!.value!
    }
    func count()->Int
    {
        var count=0
        while head != nil
        {
            count+=1
            head=head?.next
        }
        return count
    }
}
let path="/Users/bridgelabz/Desktop/IOS/DataStructures/Files/my.txt"
var str:String=""
do{
    str = try String(contentsOfFile: path, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
}
catch let error as NSError{
    print("OOPS something went wrong\(error)")
}
var s=str.split(separator:"\n")
var list=UnorderdList()
for i in 0..<s.count
{
    list.insert(value: String(s[i]) as String)
}
list.printList()
print("Enter String to Search:")
var s1=readLine()!
print("/n")
var n=0
var t=list.searchNode(item: s1)
if t.flag == true
{
    list.deleteNode(at: t.i-1)
   
}
else
{
    list.insert(value: s1)
    print("ListContains:")
}
for i in 0..<list.count()
{
   print(list.listItem())
}
