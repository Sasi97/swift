import UIKit
import Swift
func sqrt(c:Double)-> Double
{
    let epslion:Double = 1e-15;
    var t:Double = c;
    while Double(abs(t-c/t)) > epslion*t
    {
        t = (c / t + t) / 2;
    }
    return t
    
}
var d=sqrt(c:10.2)
print(d)
