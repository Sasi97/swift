import UIKit
import Swift
func windchil()
{
    let t = 0.3
    let v = 0.5
    let w = 35.74 + 0.6215*t + (0.4275*t - 35.75) * pow(v, 0.16);
    print(w)
}
windchil()
