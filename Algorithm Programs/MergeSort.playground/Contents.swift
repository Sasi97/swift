import UIKit
import Swift
func mergeSort(array: inout [Int], start: Int, last: Int)
{
    let middle = (start + last) / 2
    mergeSort(array: &array, start: start, last: middle)
    mergeSort(array: &array, start: middle+1, last: last)
    merge(array: &array, start: start, middle: middle, last: last)
    print(array)
}
func merge(array:inout [Int],start:Int,middle:Int,last:Int)
{
    let leftArray=Array(array[start...middle])
    let rightArray=Array(array[middle+1...last])
    var i=start
    var left=0
    var right=0
    while left<leftArray.count && right < rightArray.count
    {
        if leftArray[left] < rightArray[right]
        {
            array[i] = leftArray[left]
            left += 1
        }
        else {
            array[i] = rightArray[right]
            right += 1
        }
        i += 1
    }
    while left < leftArray.count
    {
        array[i] = leftArray[left]
        i += 1
        left += 1
    }
    
    while right < rightArray.count
    {
        array[i] = rightArray[right]
        i += 1
        right += 1
    }
    
}
var numbers = [14,1,2,12,8,24,3,5,-1]
mergeSort(array: &numbers, start: 0, last: numbers.count-1)


