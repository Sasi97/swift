import Swift
func binarysearch(a:[Int],key:Int)-> Int
{
    var high = a.count-1
    var low = 0
    
    while low <= high
    {
        let midvalue = (high + low) / 2
        let value = a[midvalue]
        if value == key
        {
            return midvalue
            
        }
        else if value < key
        {
            low = midvalue + 1
            
        }
        else
        {
            high = midvalue - 1
        }
    }
    return -1
   

}
var a = [23,4,8,2,7]
a.sort()
print(a)
let key = 23
var res:Int=binarysearch(a:a,key:key)
if res == -1
{
    print("Element Not Found")
}
else
{
    print("\(key) found at \(res)")
}




