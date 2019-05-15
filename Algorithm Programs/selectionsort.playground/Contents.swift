import UIKit
import Swift
func selectionsort()
{
    var a = [23,45,6,78,10]
    let max=a.count-1
    var min:Int
    var key:Int
    for i in 0...max
    {
        min = a[i]
        key = i
       for j in 1...max
       {
            if a[j]<min
            {
                min = a[j]
                key=j
            }
        
        }
        a[key]=a[i]
        a[i]=min

       
    }
    print(a)
}
selectionsort()
/*func selsrtI(lst)
 max = length(lst) - 1
 
 for i from 0 to max
 key = lst[i]
 keyj = i
 
 for j from i+1 to max
 if lst[j] < key
 key = lst[j]
 keyj = j
 
 lst[keyj] = lst[i]
 lst[i] = key
 
 return lst*/

