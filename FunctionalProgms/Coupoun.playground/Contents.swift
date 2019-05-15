import UIKit
import Swift
func coupoun(num:Int)
{
    var set=Set<Int>()
    for _ in 0...num
    {
       let n=Int.random(in: 0...9)
        if  !set.contains(n)
        {
            set.insert(n)
        }
        
    }
    for j in set
    {
        print(j,terminator:"")
    }
    
}
coupoun(num: 5)
