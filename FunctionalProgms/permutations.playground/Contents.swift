import UIKit
import Swift
func permute(s:String,l:Int,r:Int)
{
    var s1=s
    var charArray:[Character]=[]
    for char in s
    {
        charArray.append(char)
    }
    if(l==r)
    {
        print(s)
    }
    else
    {
        for i in l...r
        {
            s1=swapping(s:s1,i:l,j:i)
            permute(s:s1,l:l+1,r:r)
            s1=swapping(s:s1,i:l,j:i)

        }
    }
}
func swapping(s:String,i:Int,j:Int)-> String
{
    var temp:Character?
    var charArray:[Character]=[]
    for char in s
    {
        charArray.append(char)
    }
    temp = charArray[i]
    charArray[i]=charArray[j]
    charArray[j]=temp!
    return String(charArray)
}

var s="abcd"
permute(s:s, l: 0, r:s.count-1)

