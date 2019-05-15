import UIKit
import Swift
func sumOf()-> Int
{
    var a:Array=[-1,1,2,4,7,0,5]
    var count=0
   for i in 0...a.count-1
    {
        for j in i+1...a.count-1
        {
            for k in j+1...a.count-1
            {
                if a[i]+a[j]+a[k] == 0
                {
                    print(a[i])
                    print(a[j])
                    print(a[k])
                    count+=1
                }
            }
        }
    }
    //print(a.count)

    return count
    
}
var count:Int=sumOf()
print(count)
