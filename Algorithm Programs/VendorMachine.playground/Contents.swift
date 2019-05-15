import UIKit
import Swift
func countMoney(amount:Int)
{
        
        var a = [2000 , 1000  , 500 , 100 , 50 , 10 , 5 , 2 , 1]
        
        var total = 0
        
        var rem = 0
        
        for i in 0...a.count-1{
            
            if amount >= a[i] {
                
                var calNotes = amount/a[i];
                
                var  rem = amount%a[i]
                
                var    amount = rem
                
                //total += calNotes
                
                print("\(calNotes)")
                
                
                
            }
            
            var i = i+1
            
        }
        
        print("currency counter")
        
        for i in 0...a.count-1{
            
            if amount == 0{
                
                print("\(a[i])")
                
            }
                
            else{
                
                print("invalid amount")
                
            }
            
        }
    
}

var count=countMoney(amount:1000)
print(count)
