import UIKit
import Swift
func primeFactors(num:Int)
{
    var n=num
    for i in 2...num
    {
        while n % i == 0
        {
            print(i)
            n=n/i
        }
        
    }
    if n > 2
    {
        print(num)
    }
    
    
}
var s=12
primeFactors(num:s)
//primeFactors(num:Int(readLine()!)!)
