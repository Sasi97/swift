import Swift

func flip(num:Int)
{
    var heads=0
    var tails=0
    for _ in 1...num
    {
        let number = Float.random(in: 0...1)
        if number<0.5
        {
            tails+=1
        }
        else
        {
            heads+=1
        }
    }
    print("Heads Count is:  \(heads)")
    print("Tails count is :\(tails)")
    print("Percentage of Heads: \((heads*100)/num)%")
    print("Percentage of Heads: \((tails*100)/num)%")
}
//flip(num: (Int)(readLine()!))!
flip(num: 10)

