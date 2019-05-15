import UIKit
import Swift
func dayOfWeek(day:Int,month:Int,year:Int) -> Int
{
    var x:Int
    var d0:Int
    var m0:Int
    var y0:Int
    y0=year-(14-month) / 12
    x=y0 + y0/4 - y0/100 + y0/400
    m0=month + 12 * ((14 - month) / 12) - 2
    d0 = (day + x + (31 * m0) / 12) % 7
    return d0
}
var i:Int=dayOfWeek(day: 27, month: 04, year: 2019)
switch i
{
    case 1:print("Monday")
            break
    case 2:print("Tuesday")
        break
    case 3:print("Wednesday")
        break
    case 4:print("Thursday")
        break
    case 5:print("Friday")
        break
    case 6:print("Saturday")
        break
    case 0:print("Sunday")
        break
    default:break
}
