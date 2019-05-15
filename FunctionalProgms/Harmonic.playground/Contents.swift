import UIKit
import Swift
func harmonic(num:Int)
{
    var sum:Double=0
    for i in 1...num
    {
        sum += 1/Double(i)
        
    }
    print(sum)
    
}
harmonic(num:2)
