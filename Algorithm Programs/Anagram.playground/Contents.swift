import UIKit
import Swift
func isAnagram(a:String,b:String)-> Bool
{
    let n1=a.count
    let n2=b.count
    var a1:[Character]=[]
    for char in a
    {
        a1.append(char)
    }
    var a2:[Character]=[]
    for char in b
    {
        a2.append(char)
    }
    if n1 != n2
    {
        return false
    }
    a1.sort()
    a2.sort()
    for i in 0...a1.count-1
    {
        if a1[i] != a2[i]
        {
            return false
        }
    }
    return true
}
var s1="heart"
var s2="earht"
if(isAnagram(a:s1,b:s2))
{
    print("\(s1) and \(s2) are Anagrams")
}
else
{
   print("\(s1) and \(s2) are not Anagrams")
}
