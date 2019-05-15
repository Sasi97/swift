import Swift
func insertionsort()
{
    var p = 0
    
    var a = [12,5,89,34,45]
    let n=a.count-1
    for i in 0...n
    {
        var j = i
        p = a[i]
        
        while j>0 && a[j-1]>p
        {
            a[j] = a[j-1]
            j = j-1
        }
        a[j] = p
    }
    print(a)
    
    
}
insertionsort()

