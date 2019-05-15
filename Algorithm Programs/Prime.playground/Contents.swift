import UIKit
import Swift
func areAnagram(x:Int,y:Int)-> Bool
{
    let a=String(x)
    let b=String(y)
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


func primePallendromeAnagram()
{

    var set=Array<Int>()
    var b:Bool=true
    for i in 3...1000
    {
        b=true
        for j in 2...i-1
        {
            if (i % j == 0)
            {
                b = false
                break
            }
        }
        if (b &&  isPallindrome(n:i))
        {
             set.append(i)
        }
    }
    for i in 0...set.count-1
    {
        for j in 1...set.count-1
        {
            if areAnagram(x: set[i], y: set[j])
            {
                print("\(set[i])")
            }
        }
    }

    
}
func isPallindrome(n:Int)-> Bool
{
    var temp = n;
    var sum = 0;
    while (temp != 0)
    {
        let r = temp % 10;
        sum = sum * 10 + r;
        temp = temp / 10;
    }
    if (sum == n)
    {
        return true;
    }
    return false;
}

print("Prime & Pallen & Anagram Numbers are:\n")
primePallendromeAnagram()

