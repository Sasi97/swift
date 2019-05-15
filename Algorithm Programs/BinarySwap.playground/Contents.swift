import UIKit
import Swift
func pad(string : String, toSize: Int) -> String
{
    var padded = string
    for _ in 0...(toSize - string.count-1)
    {
        padded = "0" + padded
    }
    return padded
}
func swapNibble(s:String)
{
    let index1=s.index(s.endIndex, offsetBy: -4)
    let substring1 = s[..<index1]
    let substring2=s[index1...]
    let subString3 = substring2 + substring1
    print("After Swapping Nibbles")
    print(subString3)
    let n=subString3
    let str=Int(n,radix: 2)!
    print("\(subString3)-\(str)")
    
}

let num = 100
let str = String(num, radix: 2)
print("\(num) - \(str) ") // 10110
var paddingString=pad(string: str, toSize: 8)// 00010110
print("After padding")
print(paddingString)
swapNibble(s:paddingString)

