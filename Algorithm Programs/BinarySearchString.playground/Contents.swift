import UIKit
import Swift
func binarysearch(a:[String],key:String)-> Int
{
    
    var high = a.count-1
    var low = 0
    
    while high > low
    {
        let midvalue = (high + low) / 2
        
        if a[midvalue].caseInsensitiveCompare(key) == .orderedSame
        {
            return midvalue
        }
        else if a[midvalue].caseInsensitiveCompare(key) == .orderedDescending
        {
             high = midvalue - 1
        }
        
        else if a[midvalue].caseInsensitiveCompare(key) == .orderedAscending
        {
            low = midvalue + 1
        }
    
    }
    return -1
}
var s="Hai hello sasi Welcome to bridge labs"
var a:[String]=s.lowercased().components(separatedBy: " ")
a.sort()
print(a)

let key = "sasi"
var res=binarysearch(a:a,key:key)
if res == -1
{
    print("Key Not Found")
}
else
{
    print("\(key) found at \(res)")
}



