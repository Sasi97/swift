import Foundation
import Swift

func leap(year:String) -> Bool
{

    let n=year.count
    let x=Int32(year)
    if n != 4
    {
        print("Enter Valid Year With 4digits!!!")
        exit(0)
    }
    else
    {
        if x! % 4==0  && x! % 100 != 0 || x! % 400==0
        {
            return true
        }
        else
        {
            return false
        }
    }

    
    
}
if leap(year:"2010")
{
    print("  leap year")
    
}
else
{
    print(" not a leap year")
}

