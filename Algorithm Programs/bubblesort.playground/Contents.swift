import UIKit
import Swift
func bubblesort()
{
    var a = [2,34,55,7,66,5,3,14]
    var temp = 0
    for i in 0...7-1
    {
        for j in 0...7-1-i
        {
            if a[j]>a[j+1]
            {
                temp = a[j]
                a[j] = a[j+1]
                a[j+1] = temp
            
            }
        }
       
    }
    for i in a
    {
        print(i)
    }
}
bubblesort()

